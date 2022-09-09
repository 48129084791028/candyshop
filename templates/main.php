    <div class="mainBlockContent">
        <div class="HeadCatList">
            <h2>Категории</h2>
            
        </div>
        <div class="categories">
            <?php
            //подключаемся к БД и выбираем все данные о категориях
            $sql=$link->query("SELECT * FROM categories");
            foreach ($sql as $good):
                ?>

                <a href="index.php?page=product_cat&id_cat=<?php echo $good['id']?>">
                    <div class="cardCat">
                        <div class="catPhoto">
                            
                            <img  width="150px" height="129px" src="<?php echo $good['image']; 
                        ?>"alt="">

                    </div>
                    <div class="catName">
                        <?php echo $good['name'] ?>
                    </div>
                </div>
            </a>

            <?php
        endforeach; 
        ?>
    </div> 
</div> 
<div class="mainBlockContent">
    <p class="title1">Ресторан «PopFood» - Нижний Новгород</p>
    
    <p class="title2">ЗАКАЗ ЕДЫ НА ДОМ ИЛИ В ОФИС</p>
    <p class="text">Заказывать очень удобно: вы можете воспользоваться этой услугой в любое удобное для вас время (попадающее в наш график работы). Наше меню отлично подходит для перекуса в офисе вместе с коллегами: вы сможете не отрываться от рабочего процесса и насладиться вкуснейшими свежими блюдами, чтобы восстановить силы для дальнейших трудовых свершений. Не успеваете приготовить обед? На помощь приходит PopFood.</p>

    <p class="title2">КОНТРОЛЬ КАЧЕСТВА ПРОДУКТОВ</p>
    <p class="text">Мы выбираем лучшее, что готовы предложить нам наши поставщики. Кстати, они тоже лучшие – мы сотрудничаем с крупными сетями. А это дополнительная гарантия качества.</p>

    <p class="title2">ПОДБОР РЕЦЕПТОВ</p>
    <p class="text">Все блюда приготовлены только по отобранным рецептам, которые понравились нашим гостям. Мы стараемся выбирать лучшее, тщательно соблюдать пропорции ингредиентов для достижения идеального вкуса.</p>


    <p class="title2">ЧИСТАЯ КУХНЯ</p>
    <p class="text">Гарантируем чистоту на рабочем столе и в помещении, порядок и быструю работу.</p>
</div>