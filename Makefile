CC = gcc

SRC = src
TASK = task1
DIR_TASK = $(SRC)

TASK_NUM = 2
CFLAGS = -DTASK=$(TASK_NUM)

OUTPUT = build

.PHONY: all clean

all: $(OUTPUT) app

$(OUTPUT):
	mkdir $(OUTPUT)

app: $(OUTPUT)/main.o $(OUTPUT)/task.o
	$(CC) $(FLAGS) $(OUTPUT)/main.o $(OUTPUT)/task.o -o $(OUTPUT)/app

# TASK
$(OUTPUT)/task.o: $(DIR_TASK)/task$(TASK_NUM).c | $(OUTPUT)
	$(CC) $(CFLAGS) -c $(DIR_TASK)/task$(TASK_NUM).c -o $(OUTPUT)/task.o

#MAI
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