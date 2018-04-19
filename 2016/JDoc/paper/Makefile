all:
	@latexmk -pdf main
	@cp main.pdf mangean_irccyn_papier.pdf

clean:
	@latexmk -C 2> /dev/null
	@rm -f main.bbl
	@rm -f ./img/*.pdf
