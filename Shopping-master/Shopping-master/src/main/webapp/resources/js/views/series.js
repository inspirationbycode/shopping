define(['jquery', 'backbone', 'dust', 'text!../templates/series.jsp'],
    function($, Backbone, dust, tmpl) {
        var Series = Backbone.Collection.extend({
            url: 'series',
        });
        var SeriesView = Backbone.View.extend({
            el: '.features_items',
            render: function () {;
                var self = this;
                dust.renderSource(tmpl, {'series' : new Series().fetch()},
                    function(err, out) { self.$el.html(out) });
            }
        });
        return SeriesView;
    });


