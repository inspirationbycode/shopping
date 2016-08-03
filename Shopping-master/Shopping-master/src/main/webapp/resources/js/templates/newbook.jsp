<h2 class="title text-center">New Books</h2>
{#Newbooks}
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <img width="242" height="300" src="{url}"  alt="" />
                <h2>US $16.55 {price.usd} / RUB 1655</h2>
                <p>{name}</p>
                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
            </div>
            <div class="product-overlay">
                <div class="overlay-content">
                    <h2>US $16.55 {price.usd} / RUB 1655</h2>
                    <p><a href="#page/book/{id}">{name}</a></p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
                </div>
            </div>
        </div>
        <div class="choose">
        </div>
    </div>
</div>
{/Newbooks}