DIR := bin/
TARGET := sample-webserver
FULL_PATH := $(DIR)$(TARGET)

.PHONY: all build create_directory clean run

all: create_directory build 

build:
	@cargo build --release
	@cp target/release/$(TARGET) bin/$(TARGET)

print:
	@echo $(DIR)

create_directory:
	@mkdir -p $(DIR)

clean:
	@cargo clean
	@rm -f $(TARGET)

run:
	@$(shell) ./$(FULL_PATH)