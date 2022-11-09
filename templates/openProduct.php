<div class="mainBlockContentOP">
    <div class="topBlockOP">
        <p id="openedProduct-name">
            <?php echo $good['name']; 
            
            if (array_key_exists('message1', $_SESSION)) {
                echo '<p class="msg"> ' . $_SESSION['message1'] . ' </p>';
            }unset($_SESSION['message1']);
            
            ?>
        </p>
    </div>
    <div class="blockTovar">
        <div class="blockTovarChild">
            <div class="topBlock">
                <div class="leftTopBlock">
                 <img  width="250px" max-height="250px" src="<?php echo $good['imgs']; ?>"alt="">
             </div>
             <div class="rightTopBlock">
                
                <div class="contMan">
                    <table class="tableCountMan">
                        <tr>
                            <td><?php $price = $good['price']; echo '<a class="Price">Цена '.$good['price'].'₽/шт </a>';?></td>  
                        </tr>
                            <td><?php echo $good['comp']; ?></td>
                       <tr></tr>
                        
                            <td><?php echo $good['weight']; ?></td>
                        
                       
                    </table>
                </div>
                <form id="form1" name="form1" action="add_cart.php" method="post">
                    


                    <div class="product__quantity">
                        <div class="smart-basket__quantity-item">
                            <input type="button" value="-" class="smart-basket__remove-item" id="button_minus">
                            <input onchange="location=value" type="text" class="smart-basket__product-quantity-state" min="1" step="1" pattern="^[0-9]" value="1" id="num_count" name="quantity" title="Qty">
                            <input type="button" value="+" class="smart-basket__add-item" id="button_plus">
                        </div>
                    </div>



                    <!-- начало невидимой части формы -->
                    <input type="hidden" name="product_id"
                    value="<?php echo $good['id'] ?>"/>
                    <!-- конец невидимой части формы -->
                    <button class='add_to_cart' type="submit"
                    name="submit" href="#">В корзину</button>
                    <td><a href="index.php?page=shop">Назад</a></td>
                </form>
            </div>
        </div>  
    </div>  
</div>
<!-- обработчик событий для счетчика количества товаров -->
<script>
    const numCount = document.getElementById('num_count');
    const plusBtn = document.getElementById('button_plus');
    const minusBtn = document.getElementById('button_minus');
    plusBtn.onclick = function () {
        let qty = parseInt(numCount.value);
        qty = qty + 1;
        numCount.value = qty;
    }
    minusBtn.onclick = function () {
        let qty = parseInt(numCount.value);
        if (qty > 1) {
            qty = qty - 1;
        }
        numCount.value = qty;
    }
</script>