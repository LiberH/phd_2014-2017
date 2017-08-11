all:
	@latexmk -pdf main

clean:
	@latexmk -C 2> /dev/null
	@rm -f main.bbl
	@rm -f main.vtc
	@rm -f ./img/*-eps-converted-to.pdf
