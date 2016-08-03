<h2 class="title text-center">Authors</h2>
{#authors}
<div class="col-sm-4">
  <div class="product-image-wrapper">
    <div class="single-products">
      <div class="productinfo text-center">
        <img width="242" height="300" src="{url}" alt="" />
        <h2></h2>
        <p>{firstName} {lastName}</p>
      </div>
      <div class="product-overlay">
        <div class="overlay-content">
          <h2></h2>
          <p><a href="/#page/author/{id}">{firstName} {lastName}</a></p>

        </div>
      </div>
    </div>
    <div class="choose">
      <ul class="nav nav-pills nav-justified">
      </ul>
    </div>
  </div>
</div>
{/authors}