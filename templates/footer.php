<?php

if ( ! isset($_SESSION)) {
    session_start();
}
?>

<div id="openModal" class="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Корзина</h3>
                <a href="#close" title="Close" class="close">×</a>
            </div>
            <div class="modal-body">

                <table>
                    <tr>
                        <td></td>
                        <td><b>Название</b></td>
                        <td><b>Количество</b></td>
                        <td><b>Цена за шт.</b></td>
                        <td><b>Итого</b></td>
                        <td><b>Адрес</b></td>
                        <td><b></b></td>
                    </tr>
                    <?php

                    //подключаемся к БД и выбираем все данные о наших товарах
                    $sql_m       = $link->query("SELECT * FROM `products`");
                    $Sum         = 0;
                    $add_product = $_SESSION['add_product'];
                    $sql_users = $link->query("SELECT * FROM `users`");
                    $sql_address = $link->query("SELECT * FROM `address`");

                    
                    $sql_userso = $link->query("SELECT * FROM `users`");
                    $sql_addresso = $link->query("SELECT * FROM `address`");
                    //проверяем, что корзина не пуста иначе будет выходить ошибка
                    if (isset($add_product)) {

                        //перебираем массив с добавленными товарами и выбираем id товара
                        foreach ($add_product as $key => $value) {
                            $a      = $key;  //id товара
                            $kol    = $_SESSION['add_product'][$a];
                            $good_m = [];
                            foreach ($sql_m as $product_m) {
                                if ($product_m['id'] == $a) {
                                    $good_m = $product_m;
                                    break;
                                }
                            } 
        
                    foreach ($sql_addresso as $addresso) {
                    foreach ($sql_userso as $userso) {
                        if ($userso['id']== $_SESSION['user']['id'] ) {
                        if ($addresso['id'] == $userso['id_addr']) {
                            $addro      = $addresso['address'];
                        }
                    }
                }
            }

                                ?>

                                <tr>
                                    <td><img width="50px" height="50px" src="<?php echo $good_m['imgs']; ?>" /></td>
                                    <td><?php echo $good_m['name']; ?></td>
                                    
                                    
                                     <td><?php echo $kol; ?></td>
                                    <td><?php echo $good_m['price'] . 'р'; ?></td>
                                    <td><?php echo $kol * $good_m['price'] . 'р'; ?></td>
                                    <td> <?php echo $addro; ?></td>
                                    <td><b><a href="rem_basket.php?remId=<?php echo $a;?>">удалить</a></b></td>
                                </tr>
                                <?php

                           // функция для подсчета общей суммы стоимости товаров
                                $Sum += $kol * $good_m['price'];
                            }
                        }
                        ?>

                        <tr>
                            <td></td>
                            <td align="right" colspan="5"><b> <?php echo 'Всего: '
                            . $Sum . 'р';?></b></td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td align="right" colspan="5"><b> 
                                <div class="btnbuy">

                                <a
                                href="add_basket.php">Оформить заказ</a></div></b>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
       <div class="l-footer">
          <h1>О нас</h1>
          <p>
             В нашем магазине вы найдете многообразие европейских сладостей, 
         </p>
         <p>представленных брендами Oreo, Milka, Nutella, Nestle, Twix, KitKat и другими марками.</p>
     </div>
     <ul class="r-footer">
         <li class="footerInfo">
            <ul class="box">

               <li><a href="index.php?page=index">Главная</a></li>
               <li><a href="index.php?page=shop">Ассортимент</a></li>
               <li><a href="index.php?page=profile">Личный кабинет</a></li>
               <li> </li>
           </ul>
       </li>
       <li class="features">
        <ul class="box h-box">
           <li> <i class="iconNav fa-solid fa-at"></i> Liveinsugar@gmail.ru</li>
           <li> <i class="iconNav fa-solid fa-phone"></i> 8(800)707-67-42</li>
           <li> <i class="iconNav fa-solid fa-location-dot" style="
    padding-left: 3px;
"></i> Никольская ул., 10/2с2Б</li>

       </ul>
   </li>

</ul>
<div class="b-footer">
 <p>
 All rights reserved by ©Жизнь в Сладость 2022 </p>
</div>
</footer>
<?php 

    $title="$index_tit";
    ?>
    <title><?php echo $title; ?></title>
</body>
</html>
