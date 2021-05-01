<?php
    require_once("Resources/database_access.php");

    $email_to_add = $_POST['email'];
    $query = "INSERT INTO Emails(Email) VALUES ('$email_to_add')";
    $db->exec($query);
    
    include('Connect.html');
?>