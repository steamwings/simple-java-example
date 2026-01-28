SRC_DIR := src
OUT_DIR := out

ifeq ($(OS),Windows_NT)
    SOURCES := $(subst \,/,$(shell dir /s /b $(SRC_DIR)\*.java))
    MKDIR   = if not exist $(OUT_DIR) mkdir $(OUT_DIR)
    RMDIR   = if exist $(OUT_DIR) rmdir /s /q $(OUT_DIR)
else
    SOURCES := $(shell find $(SRC_DIR) -name '*.java')
    MKDIR   = mkdir -p $(OUT_DIR)
    RMDIR   = rm -rf $(OUT_DIR)
endif

.PHONY: all clean run

all: $(OUT_DIR)
	javac -d $(OUT_DIR) $(SOURCES)

$(OUT_DIR):
	$(MKDIR)

run: all
	java -cp $(OUT_DIR) com.example.App

clean:
	$(RMDIR)
