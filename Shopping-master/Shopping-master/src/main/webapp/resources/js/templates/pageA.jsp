<div class="col-sm-9 padding-right">
  <div class="product-details"><!--product-details-->
    <div class="col-sm-5">
      <div class="view-product">
        <img src="{url}" alt="">
      </div>
    </div>
    <div class="col-sm-7">
      <div class="product-information"><!--/product-information-->
        <h1>{firstName} {lastName}</h1>
        <img src="resources/images/product-details/rating.png" alt="">
          <span>
              <h2>About:</h2>
              <p style="padding: 20px;">{description}</p>
          </span>
        <p><b>Vote:
          <input style="margin-left: 5x" type="radio">1</input>
          <input style="margin-left: 5x" type="radio">2</input>
          <input style="margin-left: 5x" type="radio">3</input>
          <input style="margin-left: 5x" type="radio">4</input>
          <input style="margin-left: 5x" type="radio">5</input>
        </b></p>
        <p><b> <button type="button" class="btn btn-default">
          Vote
        </button></b></p>
      </div><!--/product-information-->
    </div>
  </div><!--/product-details-->

  <div class="category-tab shop-details-tab"><!--category-tab-->
    <div class="col-sm-12">
      <ul class="nav nav-tabs">
        <li><a href="#reviews" data-toggle="tab">Reviews</a></li>
      </ul>
    </div>
    <div class="tab-content">
      <div class="tab-pane fade" id="reviews">
        <div class="col-sm-12">
            {#comments}
            <ul>
              <li><a href=""><i class="fa fa-user"></i>User{id}</a></li>
              <li><a href=""><i class="fa fa-clock-o"></i>{time}</a></li>
              <li><a href=""><i class="fa fa-calendar-o"></i>{date}</a></li>
            </ul>
            <p> {text}</p>
            {/comments}
          <p style="margin-top: 33px;"><b>Write Your Review</b></p>
          <form action="#">
                <span>
                    <input type="text" placeholder="Your Name">
                    <input type="email" placeholder="Email Address">
                </span>
            <textarea name=""></textarea>
            <b>Rating: </b> <img src="resources/images/product-details/rating.png" alt="">
            <button type="button" class="btn btn-default pull-right _commentSubmit">
              Submit
            </button>
          </form>
        </div>
      </div>

    </div>
  </div>
  <div class="recommended_items"><!--recommended_items-->
    <h2 class="title text-center">Recommended items</h2>
    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active">
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/recommend1.jpg" alt="">
                  <h2>$56</h2>
                  <p>Jean-Christophe Grangé.Passenger</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
                </div>

              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/recommend2.jpg" alt="">
                  <h2>$56</h2>
                  <p>Fred Vargas.Dead, get up!</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
                </div>

              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/recommend3.jpg" alt="">
                  <h2>$56</h2>
                  <p>Peter Robinson. Beyond</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
                </div>

              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/recommend1.jpg" alt="">
                  <h2>$56</h2>
                  <p>Jean-Christophe Grangé.Passenger</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
                </div>

              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/recommend2.jpg" alt="">
                  <h2>$56</h2>
                  <p>Fred Vargas.Dead, get up!</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
                </div>

              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="product-image-wrapper">
              <div class="single-products">
                <div class="productinfo text-center">
                  <img src="resources/images/home/recommend3.jpg" alt="">
                  <h2>$56</h2>
                  <p>Peter Robinson. Beyond</p>
                  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to card</a>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
      <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
        <i class="fa fa-angle-left"></i>
      </a>
      <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
        <i class="fa fa-angle-right"></i>
      </a>
    </div>
  </div><!--/recommended_items-->
</div>
<div class="col-sm-9 padding-right">
</div>