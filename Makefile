
TARGET=paper

.PHONY: FORCE
$(TARGET).pdf: FORCE
	tectonic $(TARGET).tex

.PHONY: clean
clean:
	tectonic --clean-all

.PHONY: view
view: $(TARGET).pdf
	if [ "Darwin" = "$(shell uname)" ]; then open $(TARGET).pdf ; else evince $(TARGET).pdf ; fi
