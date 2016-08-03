<h2 class="title text-center">Books</h2>
{#books}
<div class="col-sm-4">
  <div class="product-image-wrapper">
    <div class="single-products">
      <div class="productinfo text-center">
        <img width="242" height="400" src="{url}" alt="" />
        <h2>US $10.25 {price.usd} / RUB 920</h2>
        <p>{name}</p>
        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
      </div>
      <div class="product-overlay">
        <div class="overlay-content">
          <h2>US $10.25 {price.usd} / RUB 920</h2>
          <p><a href="#page/book/{id}">{name}</a></p>
          <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
        </div>
      </div>
    </div>
    <div class="choose">
    </div>
  </div>
</div>
{/books}