
define(['backbone', './views/cart'],
    function(Backbone, CartView) {
        var Controller = Backbone.Router.extend({
            routes: {
                "": "carts",
            },
            carts: function () {
                new CartView().render();
            },
        });
        return Controller;
    });



