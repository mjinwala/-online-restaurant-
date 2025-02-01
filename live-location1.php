<?php
// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "delivery_location";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $customer_name = $_POST['customer_name'];
    $delivery_address = $_POST['delivery_address'];
    $contact_number = $_POST['contact_number'];
    $order_id = $_POST['order_id'];

    $sql = "INSERT INTO delivery_details (customer_name, delivery_address, contact_number, order_id) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssss", $customer_name, $delivery_address, $contact_number, $order_id);

    if ($stmt->execute()) {
        echo "<p style='color: green;'>Delivery location added successfully!</p>";
    } else {
        echo "<p style='color: red;'>Error: " . $stmt->error . "</p>";
    }

    $stmt->close();
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Delivery Location</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            max-width: 400px;
            margin: auto;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input, textarea, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Add Delivery Location</h1>
    <form method="POST" action="">
        <label for="customer_name">Customer Name:</label>
        <input type="text" id="customer_name" name="customer_name" required>

        <label for="delivery_address">Delivery Address:</label>
        <textarea id="delivery_address" name="delivery_address" rows="4" required></textarea>

        <label for="contact_number">Contact Number:</label>
        <input type="text" id="contact_number" name="contact_number" required>

        <label for="order_id">Order ID:</label>
        <input type="text" id="order_id" name="order_id" required>

        <button type="submit">Add Location</button>
    </form>
</body>
</html>
