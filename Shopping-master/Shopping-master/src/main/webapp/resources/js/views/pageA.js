define(['jquery', 'backbone', 'dust', 'text!../templates/pageA.jsp'],
    function($, Backbone, dust, tmpl) {
        var Comment = Backbone.Model.extend({
            'url' : 'commws'
        })
        var PageAView = Backbone.View.extend({
            events: {
                'click ._commentSubmit' : 'commentAdd',
                'click ._addToCart' : 'addCart'
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
            
        });
        return PageAView;
    });


