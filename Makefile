build:
	@node_modules/coffee-script/bin/coffee -o dist -c buddysystem.coffee
	@node_modules/coffee-script/bin/coffee -o dist -c buddysystem.jquery.coffee
	@node_modules/coffee-script/bin/coffee -o dist -c buddysystem.jquery.cjs.coffee
	@node_modules/jade/bin/jade.js *.jade -o examples
	@node_modules/node-sass/bin/node-sass style.sass examples/style.css
	@echo Done.

clean:
	@rm -r dist/*
	@rm -r examples/*
	
test:
	@node_modules/phantomjs/lib/phantom/bin/phantomjs test.js
