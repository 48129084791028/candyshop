<?php
session_start();
require_once '../connect.php';
$id_user = $_SESSION['user']['id'];
$full_name        = $_POST['full_name'];
$email            = $_POST['email'];
$phone            = $_POST['phone'];
$iemail = $_SESSION['user']['email'];

$check_email       = mysqli_query(
    $link,
    "SELECT * FROM `users` WHERE `email` != '$email' "
);
if (!isset($_GET['save'])) {
        mysqli_query($link,"UPDATE `users` SET `name` = '$full_name', `email` = '$email', `phone` = '$phone' WHERE `users`.`id` = $id_user");        
    }

header('Location: ../../../index.php?page=login');
exit();
?>

