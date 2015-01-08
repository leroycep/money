VALAC=valac
SRC=$(shell find . | grep ".\.vala")
PKG= \
	--pkg gee-0.8 \
	--pkg json-glib-1.0
OUT=bin/Money

all: run

$(OUT): $(SRC)
	valac $(SRC) $(PKG) -o $(OUT)

run: $(OUT)
	./$(OUT)

clean:
	rm $(OUT)