all:
	@latexmk -pdf main

clean:
	@latexmk -C 2> /dev/null
	@rm -f main.nav
	@rm -f main.snm
	@rm -f img/*-eps-converted-to.pdf
