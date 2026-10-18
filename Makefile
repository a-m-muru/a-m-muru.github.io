PD := pandoc

.PHONY: all clean

index.html: src/index.md src/template.html
	