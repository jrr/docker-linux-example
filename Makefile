hello: hello.c
	gcc -o $@ $^

clean:
	rm -f hello

linux:
	cd dockerized-build-env; docker-compose run -w /app dockerized-build

.PHONY: clean linux