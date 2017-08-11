LC     = pdflatex
LFLAGS = -file-line-erro -halt-on-error -output-directory $(OBJ)

IMG = img
SRC = src
OBJ = obj

# Default:
all: dirs target

# Directories:
DIRS = $(OBJ)
dirs: | $(OBJ)
$(DIRS):
	mkdir -p $(DIRS)

# Figures:
FIGS =	$(IMG)/cfg-fix.png		\
	$(IMG)/rcfg-fix.png		\
	$(IMG)/pdt-fix.png		\
	$(IMG)/cdg-fix.png		\
	$(IMG)/ddg_i-fix.png		\
	$(IMG)/ddg_sum-fix.png		\
	$(IMG)/ddg_product-fix.png	\
	$(IMG)/pdg-fix.png		\
	$(IMG)/access-fix.png		\
	$(IMG)/slice-fix.png		\
	$(IMG)/schema.png		\
	$(IMG)/dfs-fix.png		\
	$(IMG)/sdom-fix.png		\
	$(IMG)/dfs2.png
figs: $(FIGS)
$(IMG)/%-fix.png: $(IMG)/%-fix.dot
	dot -Kfdp -Tpng $< -o $@
$(IMG)/%.png: $(IMG)/%.dot
	dot -Tpng $< -o $@

# PDF file:
TRGT = talk.pdf
target: figs
	$(LC) $(LFLAGS) $(SRC)/main
	@mv $(OBJ)/main.pdf $(TRGT)
	@touch $(TRGT)

# Clean:
clean:
	rm -rf ./$(IMG)/*.png
	rm -rf ./$(OBJ)/*
	rm -rf ./$(TRGT)

