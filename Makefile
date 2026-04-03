CC ?= cc

CSTD := -std=c17
WARN := -Wall -Wextra -Wpedantic -Wshadow -Wconversion
OPT_DEBUG := -O0 -g
OPT_RELEASE := -O2 -DNDEBUG

SRC_DIR := src
INC_DIR := include
TEST_DIR := tests
BUILD_DIR := build
BIN_DIR := bin

APP_NAME ?= app
TARGET := $(BIN_DIR)/$(APP_NAME)
TEST_TARGET := $(BIN_DIR)/test_app

SRCS := $(shell find $(SRC_DIR) -name '*.c')
OBJS := $(patsubst $(SRC_DIR)/%.c,$(BUILD_DIR)/%.o,$(SRCS))

CFLAGS_COMMON := $(CSTD) $(WARN) -I$(INC_DIR)
LDFLAGS_COMMON :=

.PHONY: all debug release clean run test
.SILENT:

all: debug

debug: CFLAGS := $(CFLAGS_COMMON) $(OPT_DEBUG)
debug: $(TARGET)

release: CFLAGS := $(CFLAGS_COMMON) $(OPT_RELEASE)
release: $(TARGET)

$(TARGET): $(OBJS) | $(BIN_DIR)
	$(CC) $(OBJS) -o $@ $(LDFLAGS_COMMON)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

run: debug
	./$(TARGET)

test: CFLAGS := $(CFLAGS_COMMON) $(OPT_DEBUG)
test: $(TEST_TARGET)
	./$(TEST_TARGET)

$(TEST_TARGET): $(SRC_DIR)/app.c $(TEST_DIR)/test_app.c | $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)
