default: sass

.PHONY: default sass lint lint-sass lint-js edit

lint: lint-sass lint-js

sass: static/main.css

static/main.css: src/sass/*.sass
	sassc --style expanded --line-comments --sourcemap src/sass/main.sass static/main.css

lint-sass: src/sass/*.sass
	sass --check src/sass/main.sass

lint-js: static/*.js
	jshint static

edit:
	find . -type f \
		-not -regex '.*\.git.*' \
		-not -regex '.*\.sassc' \
		-not -regex '.*\.css.*' \
		-exec vim {} +
