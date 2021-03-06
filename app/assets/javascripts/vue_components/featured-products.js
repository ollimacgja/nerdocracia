Vue.component('featured-products', {
  props: ['type'],
  data: function () {
    return {
      count: 0,
      products: []
    }
  },
  template: '<div><div class="page-header"> <h4>Featured Products: {{ type }}</h4></div><div class="row dealSlider dealSection"> <div class="slide col-md-4" v-for="product in products"> <div class="imageBox"> <div class="productDeal clearfix"> <h3>End In <span>20 Oct</span></h3> <span class="rating"> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span> </div><div class="productImage clearfix"> <a href="single-product.html"><img v-bind:src="product.url" alt="Product Image"></a> </div><div class="productCaption clearfix text-center"> <h3><a href="single-product.html">{{product.name}}</a></h3> <span class="offer-price">R${{product.price}}</span> <a class="btn btn-border" v-on:click="addToCart(product.id)">Buy Now<i class="fa fa-angle-right" aria-hidden="true"></i></a> </div></div></div></div></div>',
  created: function () {
    $.ajax({
      url: '/products/featured_products?type='+this.type,
      success: function(data){
        this.products = data.products
      }.bind(this),
      error: function(){
        // Handle Errors
      }.bind(this)
    });
  },
  methods: {
    addToCart: function (product_id) {
      alert(product_id)
    }
  }
})
