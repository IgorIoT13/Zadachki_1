CC = gcc

SRC = src
TASK = task1
DIR_TASK = $(SRC)/$(TASK)

OUTPUT = build

.PHONY: all clean

all: $(OUTPUT) app

$(OUTPUT):
	mkdir $(OUTPUT)

app: $(OUTPUT)/main.o $(OUTPUT)/task1.o
	$(CC) $(OUTPUT)/main.o $(OUTPUT)/task1.o -o $(OUTPUT)/app

$(OUTPUT)/task1.o: $(DIR_TASK).c | $(OUTPUT)
	$(CC) -c $(DIR_TASK).c -o $(OUTPUT)/task1.o

$(OUTPUT)/main.o: main.c | $(OUTPUT)
	$(CC) -c main.c -o $(OUTPUT)/main.o

ifeq ($(OS),Windows_NT)
    RM = rmdir /s /q
    RM_FILE = del /f /q
#     TARGET = app.exe
else
    RM = rm -rf
    RM_FILE = rm -f
#     TARGET = app
endif

clean:
	-$(RM) $(OUTPUT)
# 	-$(RM_FILE) $(OUTPUT)\$(TARGET)