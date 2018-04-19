LC     = latexmk
LFLAGS = -pdf -jobname=$(OBJ)/main

SRC = ./src
FIG = ./fig
OBJ = ./obj

# Default:
all: dirs target

# Directories:
DIRS = $(OBJ)
dirs: | $(OBJ)
$(DIRS):
	mkdir -p $(DIRS)

# PDF file:
target:
	@$(LC) $(LFLAGS) $(SRC)/main.tex

# Clean:
clean:
	@$(LC) $(LFLAGS) -C $(SRC)/main.tex 2> /dev/null
	@rm -f $(OBJ)/main.nav $(OBJ)/main.snm $(OBJ)/main.bbl $(OBJ)/main.vrb $(OBJ)/main.vtc
	@rm -f $(FIG)/*-eps-converted-to.pdf
