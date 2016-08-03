define(['jquery', 'backbone', 'dust', 'text!../templates/genre.jsp'],
    function($, Backbone, dust, tmpl) {
        var Genres = Backbone.Collection.extend({
            url: 'genrews',
        });
        var GenreView = Backbone.View.extend({
            el: '.features_items',
            render: function () {;
                var self = this;
                dust.renderSource(tmpl, {'genres' : new Genres().fetch()},
                    function(err, out) { self.$el.html(out) });
            }
        });
        return GenreView;
    });


