require.config
	paths:
		jquery: '../components/jquery/jquery'
		underscore: '../components/underscore/underscore'
		backbone: '../components/backbone/backbone'
		text: '../components/requirejs-text/text'
	shim:
		backbone:
			deps: ['underscore', 'jquery']
			exports: 'Backbone'
		underscore:
			exports: '_'

require ['backbone', 'text!templates/doodoo.html'], (Backbone, doodoo) ->

	console.log "utils loaded: %o", utils = underscore:  _.VERSION, jQuery: $().jquery, Backbone: Backbone.VERSION

	_.templateSettings =
		interpolate : /\{\{(.+?)\}\}/g

	$ ->
		temper = _.template(doodoo)
		$("h1").html(temper(name: "Test"))
