requirejs.config({
	paths:{
		'require': './require',
		'jquery': './bower/jquery/dist/jquery',
		'underscore': './bower/underscore/underscore',
		'backbone': './bower/backbone/backbone',
		'dust': './bower/dustjs-linkedin/dist/dust-full'
	},
});

define.amd.dust = true;

require(['app'], function(app) {
	return app.start();
})




