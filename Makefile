PD := pandoc

.PHONY: all clean

all: index.html gamedev.html

index.html: src/index.md src/template.html gamedev.html
	$(PD) src/index.md -o index.html --template src/template.html --standalone

gamedev.html: src/gamedev.md src/template.html
	$(PD) src/gamedev.md -o gamedev.html --template src/template.html --standalone