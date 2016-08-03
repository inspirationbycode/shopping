define(['jquery', 'backbone', 'dust', 'text!../templates/page.jsp'],
    function($, Backbone, dust, tmpl) {
        var Comment = Backbone.Model.extend({
            'url' : 'commws'
        })
        var Cart = Backbone.Model.extend({
            'url' : 'cartws'
        })
        var PageView = Backbone.View.extend({
            events: {
                'click ._commentSubmit' : 'commentAdd',
                'click ._addToCart' : 'addCart',
                'click .setMark' : 'setMark'
            },
            el: '.single_page',
            render: function (model) {
                $('.outer_div').html('');
                var self = this;
                dust.renderSource(tmpl, model.toJSON(),
                    function(err, out) { self.$el.html(out) });
            },

            commentAdd: function() {
                new Comment({
                    'text': $('.text').val,
                    'name': $('.name').val(),
                    'email': $('.email').val(),
                }).save();
            },

            setMark : function () {
                this.model.set(mark, $('_mark').val()).save();
            },

            addCart: function () {
                new Cart(model).save();
            }
        });
        return PageView;
    });


