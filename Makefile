CC = g++
BIN = bbjasm bbjrun

.PHONY: clean all

all: $(BIN)

$(BIN): %: %.cpp
	$(CC) -std=c++03 -Wall -Wextra -O2 -o $@ $^

clean:
	rm -f $(BIN)
