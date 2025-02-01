<?php
header("Content-Type: application/json");
$servername = "localhost";
$username = "root";
$password = ""; // Your database password
$dbname = "delivery_location";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(["status" => "error", "message" => $conn->connect_error]));
}

function getCoordinates($address) {
    $apiKey = "AIzaSyD0ZhMvSUTU55aWUyybJG0hSaPEE-stWKc"; // Replace with your API key
    $address = urlencode($address);
    $url = "https://maps.googleapis.com/maps/api/geocode/json?address={$address}&key={$apiKey}";

    $response = file_get_contents($url);
    $data = json_decode($response, true);

    if ($data['status'] === 'OK') {
        $location = $data['results'][0]['geometry']['location'];
        return [
            'latitude' => $location['lat'],
            'longitude' => $location['lng'],
        ];
    }

    return null; // Return null if the address is invalid
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $order_id = $_POST['order_id'];
    $address = $_POST['address'];

    if ($order_id && $address) {
        $coordinates = getCoordinates($address);

        if ($coordinates) {
            $latitude = $coordinates['latitude'];
            $longitude = $coordinates['longitude'];

            $stmt = $conn->prepare("INSERT INTO locations (order_id, latitude, longitude) 
                                    VALUES (?, ?, ?) 
                                    ON DUPLICATE KEY UPDATE latitude = VALUES(latitude), longitude = VALUES(longitude), updated_at = CURRENT_TIMESTAMP");
            $stmt->bind_param("sdd", $order_id, $latitude, $longitude);

            if ($stmt->execute()) {
                echo json_encode(["status" => "success", "message" => "Location updated"]);
            } else {
                echo json_encode(["status" => "error", "message" => $stmt->error]);
            }

            $stmt->close();
        } else {
            echo json_encode(["status" => "error", "message" => "Invalid address"]);
        }
    } else {
        echo json_encode(["status" => "error", "message" => "Invalid input"]);
    }
} elseif ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $order_id = $_GET['order_id'];

    if ($order_id) {
        $stmt = $conn->prepare("SELECT latitude, longitude, updated_at FROM locations WHERE order_id = ? ORDER BY updated_at DESC LIMIT 1");
        $stmt->bind_param("s", $order_id);

        if ($stmt->execute()) {
            $result = $stmt->get_result();
            $location = $result->fetch_assoc();

            if ($location) {
                echo json_encode(["status" => "success", "data" => $location]);
            } else {
                echo json_encode(["status" => "error", "message" => "No location found"]);
            }
        } else {
            echo json_encode(["status" => "error", "message" => $stmt->error]);
        }

        $stmt->close();
    } else {
        echo json_encode(["status" => "error", "message" => "Order ID required"]);
    }
} else {
    echo json_encode(["status" => "error", "message" => "Invalid request method"]);
}

$conn->close();
?>
