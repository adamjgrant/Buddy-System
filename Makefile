build:
	@node_modules/coffee-script/bin/coffee -c buddysystem.coffee
	@node_modules/coffee-script/bin/coffee -c buddysystem.jquery.coffee
	@node_modules/jade/bin/jade.js index.jade
	@node_modules/node-sass/bin/node-sass style.sass style.css
	@echo Done.
