define(['backbone', 'router'], function (Backbone, Controller) {
    var app = {
        start: function () {
            var controller = new Controller();
            Backbone.history.start();
        },
    }
    return app;
});