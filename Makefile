hello: hello.c
	gcc -o $@ $^

clean:
	rm -f hello

.PHONY: clean