build:
	@node_modules/coffee-script/bin/coffee -c buddysystem.jquery.coffee
	@node_modules/jade/bin/jade.js *.jade
	@node_modules/node-sass/bin/node-sass style.sass style.css
	@rm -rf *.min.js
	@for f in *.js;do minify --output $${f%.js}.min.js $${f};done
	@echo Done.
