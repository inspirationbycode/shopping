define(['jquery', 'backbone', 'dust', 'text!../templates/book.jsp'],
    function($, Backbone, dust, tmpl) {
        var Books = Backbone.Collection.extend({
            url: 'bookws',
        });
        var BookView = Backbone.View.extend({
            el: '.features_items',
            render: function () {
                var self = this;
                dust.renderSource(tmpl, {'books' : new Books().fetch()},
                    function(err, out) { self.$el.html(out) });
            }
        });
        return BookView;
    });


