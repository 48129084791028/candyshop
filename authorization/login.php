<?php
session_start();
if ($_SESSION['user']) {
  if ($_SESSION['user']['role'] == "0" || $_SESSION['user']['role'] == null) {
    require 'profile.php';
    $index_tit="Личный кабинет";
} else if ($_SESSION['user']['role'] == "1") {
    require 'admin.php';
    $index_tit="Панель администратора";

}

require 'templates/footer.php';
exit();
} else {
    $index_tit="Авторизация"; 
}
?>
<div class="avtorlogphoto">
<div class="avtorlog">
    <form class="formlogin" action="authorization/handler_form/signin.php" method="post">
        <label>Почта</label>
        <input type="text" id="email" name="email" placeholder="Введите почту">
        <label>Пароль</label>
        <input type="password" id="password" name="password" placeholder="Введите пароль">
        <button id="submit" type="submit">Войти</button>
        <p>
            У вас нет аккаунта? - <div class="registrationbtn"><a href="index.php?page=register">Зарегистрируйтесь!</a></div>
        </p>
        
    </form>

</div>
<?php
        // вывод сообщения об ошибке
        if (array_key_exists('message', $_SESSION)) {
            echo '<p class="msg"> ' . $_SESSION['message'] . ' </p>';
        }
        unset($_SESSION['message']);
        ?>
</div>


