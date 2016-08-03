define(['jquery', 'backbone', 'dust', 'text!../templates/author.jsp', ],
    function($, Backbone, dust, tmpl) {
        var Authors = Backbone.Collection.extend({
            url: 'authorws',
        });
        var AuthorView = Backbone.View.extend({
            el: '.features_items',
            render: function () {
                var self = this;
                dust.renderSource(tmpl, {'authors' : new Authors().fetch()}, function(err, out) {
                    self.$el.html(out);
                });
            }
        });
        return AuthorView;
    });
