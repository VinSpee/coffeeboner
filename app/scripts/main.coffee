require.config
	paths:
		jquery: '../components/jquery/jquery'
		underscore: '../components/underscore/underscore'
		backbone: '../components/backbone/backbone'
	shim:
		backbone:
			deps: ['underscore', 'jquery']
			exports: 'Backbone'
		underscore:
			exports: '_'

require ['backbone'], (Backbone) ->
	console.log "utils loaded: %o", utils = underscore:  _.VERSION, jQuery: $().jquery, Backbone: Backbone.VERSION
