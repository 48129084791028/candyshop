<?php
session_start();
require_once '../../connect.php';
$full_name        = $_POST['full_name'];
$email            = $_POST['email'];
$password         = $_POST['password'];
$password_confirm = $_POST['password_confirm'];
$phone            = $_POST['phone'];
$id_addr            = $_POST['id_addr'];
$check_email       = mysqli_query(
    $link,
    "SELECT * FROM `users` WHERE `email` = '$email' "
);
// обработка ошибки
if (mysqli_num_rows($check_email) > 0) {
    $_SESSION['message'] = 'Почта занята';
    $redirect            = $_SERVER['HTTP_REFERER'] ?? 'redirect-form.html';
    header("Location: $redirect");
    exit();
} else {
    if ($password === $password_confirm) {
        $password = md5($password);
        // загрузка данных о пользователей в БД
        mysqli_query(
            $link,
            "INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `role`,`id_addr`) VALUES (NULL, '$full_name', '$email', '$password',  '$phone', null, null)"
        );
        $_SESSION['message'] = 'Регистрация прошла успешно!';
        header('Location: ../../index.php?page=login');
    } else {
        $_SESSION['message'] = 'Пароли не совпадают';
        $redirect = $_SERVER['HTTP_REFERER'] ?? 'redirect-form.html';
    header("Location: $redirect");
    exit();
    }
    
}


