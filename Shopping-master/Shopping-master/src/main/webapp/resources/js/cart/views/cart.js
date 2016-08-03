define(['jquery', 'backbone', 'dust', 'text!../templates/cart.jsp', ],
    function($, Backbone, dust, tmpl) {
        var Carts = Backbone.Collection.extend({
            url: 'cartws',
        });
        
        var Cart = Backbone.Model.extend({
            urlRoot: 'cartws',
        })

        var CartView = Backbone.View.extend({
            el: '._carts',
            events: {
                'click ._delete' : 'deleteItem',
            },
            model: new Carts(),
            initialize : function () {
                this.model.on('change', this.render, this)
            },
            render: function () {
                var self = this;
                dust.renderSource(tmpl, {carts : this.model.fetch()}, function(err, out) {
                    self.$el.html(out);
                });
            },

            deleteItem: function (e) {
                e.preventDefault();
                var id = $(e.currentTarget).attr('data-id');
                var cart = new Cart({'id' :id});
                cart.destroy({
                });
            }
        });
        return CartView;
    });
