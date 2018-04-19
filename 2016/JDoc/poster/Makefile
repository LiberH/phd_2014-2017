all:
	@latexmk -pdf main
	@cp main.pdf mangean_irccyn_poster.pdf

clean:
	@latexmk -C 2> /dev/null
	@rm -f main.nav
	@rm -f main.snm
