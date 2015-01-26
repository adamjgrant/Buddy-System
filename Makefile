build:
	@node_modules/coffee-script/bin/coffee -o dist -c buddysystem.coffee
	@node_modules/coffee-script/bin/coffee -o dist -c buddysystem.jquery.coffee
	@node_modules/coffee-script/bin/coffee -o dist -c buddysystem.jquery.cjs.coffee
	@node_modules/jade/bin/jade.js *.jade -o dist
	@node_modules/node-sass/bin/node-sass style.sass dist/style.css
	@echo Done.

clean:
	@rm -r dist/*
	
test:
	@node_modules/phantomjs/lib/phantom/bin/phantomjs test.js
