<?php
$a = $_POST["t1"];
$b = $_POST["t2"];

$conn = mysqli_connect('localhost', 'root', '', 'db2');

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected Successfully<br>";

// Insert query
$sql1 = "INSERT INTO stud (RollNo, Name) VALUES ('$a', '$b')";
if (mysqli_query($conn, $sql1)) {
    echo "Row inserted successfully<br><br>";
} else {
    echo "Error inserting row: " . mysqli_error($conn) . "<br>";
}

// Select and display data
$sql2 = "SELECT * FROM stud";
$rs = mysqli_query($conn, $sql2);

while ($row = mysqli_fetch_assoc($rs)) {
    echo "Roll No is: {$row['RollNo']}<br>";
    echo "Name is: {$row['Name']}<br>";
    echo "<hr>";
}

// Close the connection
mysqli_close($conn);
?>
