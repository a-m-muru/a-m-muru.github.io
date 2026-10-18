PD := pandoc

.PHONY: all clean

all: index.html

index.html: src/index.md src/template.html
	$(PD) src/index.md -o index.html --template src/template.html --standalone
