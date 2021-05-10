# docker-linux-example

A simple example of using Docker to access your existing project from a Linux environment.

```sh
jrr@jrrmbp ~/r/docker-linux-example (main)> uname
Darwin
jrr@jrrmbp ~/r/docker-linux-example (main)> make
gcc -o hello hello.c
jrr@jrrmbp ~/r/docker-linux-example (main)> file hello
hello: Mach-O 64-bit executable x86_64
jrr@jrrmbp ~/r/docker-linux-example (main)> ./hello
Hello, World!
jrr@jrrmbp ~/r/docker-linux-example (main)> make clean
rm -f hello
jrr@jrrmbp ~/r/docker-linux-example (main)> make linux
cd dockerized-build-env; docker-compose run -w /app build-env
Creating dockerized-build-env_build-env_run ... done
root@897e963b7bea:/app# uname
Linux
root@897e963b7bea:/app# make
gcc -o hello hello.c
root@897e963b7bea:/app# file hello
hello: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=8cba3c632621b559ed192f211dd03b5056bf8d9a, for GNU/Linux 3.2.0, not stripped
root@897e963b7bea:/app# ./hello
Hello, World!
root@897e963b7bea:/app#
```
