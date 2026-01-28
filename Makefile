SRC_DIR := src
OUT_DIR := out

SOURCES := $(shell find $(SRC_DIR) -name '*.java')

.PHONY: all clean run

all: $(OUT_DIR)
	javac -d $(OUT_DIR) $(SOURCES)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

run: all
	java -cp $(OUT_DIR) com.example.App

clean:
	rm -rf $(OUT_DIR)
