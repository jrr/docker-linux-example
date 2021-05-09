hello: hello.c
	gcc -o $@ $^

clean:
	rm -f hello

linux:
	cd dockerized-build-env; docker-compose run -w /app build-env

.PHONY: clean linux