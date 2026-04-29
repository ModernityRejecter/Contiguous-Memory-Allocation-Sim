# Compiler and flags
AS = gcc
ASFLAGS = -m32 -no-pie

# Directories
SRC_DIR = src
BIN_DIR = .

# Targets
all: task1 task2

task1: $(SRC_DIR)/task1.s
	$(AS) $(ASFLAGS) $< -o $(BIN_DIR)/$@

task2: $(SRC_DIR)/task2.s
	$(AS) $(ASFLAGS) $< -o $(BIN_DIR)/$@

clean:
	rm -f task1 task2

.PHONY: all clean
