<?php
session_start();
require 'connect.php';
require 'templates/header.php';


?>
<link rel="icon" href="/imgs/icon.png" type="image/png" />

<div id="content">


	<?php
	require('connect.php');


		// подключение к БД, выборка товаров
	if(!isset($_SESSION['sql'])) {
		$_SESSION['sql']="SELECT * FROM `products`";
	}
	$sql_text=$_SESSION['sql'];
	$sql=$link->query($sql_text);

	$page = $_GET['page'];

		// Главная страница
	if(!isset($page) || $page === "index"){
		require ('templates/main.php');
		$index_tit="Жизнь в Сладость";
	} 

		// Каталог
	elseif ($page === "shop"){
		$sql=$link->query("SELECT * FROM products");
		$index_tit="Каталог";
		require('templates/shop.php');
		
	} 

		// Категории товаров
	elseif($page=='product_cat') {


		$cat = $_GET['id_cat'];
		$sql_cat=$link->query("SELECT `name` FROM `categories` WHERE `id`= $cat");
		foreach ($sql_cat as $cat):
			$index_tit=" Категория ".$cat['name'];
		endforeach;

		

		$idg= $_GET['id_cat'];
		if($idg == 0){
			$_SESSION['sql'] = "SELECT * FROM `products`";
			$index_tit=" Категория Все";
		} else {
			$_SESSION['sql'] = "SELECT * FROM `products` WHERE `category`= $idg";}
			$sql_text= $_SESSION['sql'];
			$sql= $link->query($sql_text);
			require ('templates/shop.php');
		}

   		// Сортировка
		elseif ($page == 'sort') {
			$idg= $_GET['id_sort'];
			if($idg == 1){
				$sql_text.=" ORDER BY `name`";
				$index_tit=" Категория "."А-Я";
			} elseif($idg == 2){
				$sql_text.=" ORDER BY `name` DESC";
				$index_tit=" Категория "."Я-А";
			} elseif($idg == 3){
				$sql_text.=" ORDER BY `price` ASC";
				$index_tit=" Категория "."Дешевле";
			} elseif($idg == 4){
				$sql_text.=" ORDER BY `price` DESC";
				$index_tit=" Категория "."Дороже";
			}
			$sql= $link->query($sql_text);
			require ('templates/shop.php');

		}

	 	// Страница товара
		elseif ($page == 'openProduct') {
			$idg= $_GET['id'];
			$good = [];
			$_SESSION['sql']="SELECT * FROM `products`";
			$sql_text=$_SESSION['sql'];
			$sql=$link->query($sql_text);
			foreach ($sql as $product) {
				if($product['id'] == $idg){
					$good = $product;
					break;	
				}	
			}
			$index_tit=$good['name'];
			 
            
			require ('templates/openProduct.php');
		}

		elseif($page=='register') {
			require ('authorization/register.php');		
			$index_tit="Регистрация";		
		} 
		elseif($page=='login') {
			require ('authorization/login.php');	
					
		}  elseif($page=='profile') {
			require ('authorization/profile.php');
							
		} elseif($page=='admin') {
			require ('authorization/admin.php');
							
		} elseif($page=='change') {	
			require ('authorization/change.php');
			$index_tit="Редактирование профиля";	
		} elseif($page=='reviews') {	
			require ('authorization/reviews.php');
			$index_tit="Отзыв";
		} else if ($page === 'address') {
			require 'authorization/address.php';
			$index_tit="Редактирование адреса";
		}

		?>
	</div>

	<?php
	require('templates/footer.php');
	?>

