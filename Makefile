BUILD_DIR = build

CC = arm-none-eabi-gcc
CFLAGS = -O2 -Wall -Wl,-Map=$(BUILD_DIR)/output.map

C_SRC = src/main.c
FIRMWARE_OUT = $(BUILD_DIR)/main.out

$(FIRMWARE_OUT): $(C_SRC)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $(C_SRC)
