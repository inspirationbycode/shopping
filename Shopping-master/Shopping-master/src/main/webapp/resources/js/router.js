
define(['backbone',
    './views/book',
    './views/author',
    './views/series',
    './views/genre',
    './views/page',
    './views/pageA'],
    function(Backbone,
             BookView, AuthorView, SeriesView, GenreView, PageView, PageAView) {
    var Book = Backbone.Model.extend({
        idAttribute: 'id',
        urlRoot: 'bookws'
    })
    var Author = Backbone.Model.extend({
        idAttribute: 'id',
        urlRoot: 'authorws'
    })
    var Controller = Backbone.Router.extend({
        routes: {
            "": "books",
            "/": "books",
            "authors": "authors",
            "series": "series",
            "genres": "genre",
            "page/:type/:id": "page"
        },
        books: function() {
            new BookView().render();
        },
        authors: function() {
            new AuthorView().render();
        },
        series: function() {
            new SeriesView().render();
        },
        genre: function(){
            new GenreView().render();
        },
        page: function(type, id){
            switch(type) {
                case 'book': {
                   new Book({'id' : id}).fetch({
                       success: function(data) {
                           new PageView().render(data);
                       }
                   });
                } break;
                case 'author': {
                    new Author({'id' : id}).fetch({
                        success: function(data) {
                            new PageAView().render(data);
                        }
                    });
                } break;
            }
        }
    });
    return Controller;
});



