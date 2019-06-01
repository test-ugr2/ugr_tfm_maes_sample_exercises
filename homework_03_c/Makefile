SRCS = $(wildcard *.c)
PROGS = $(patsubst %.c,%,$(SRCS))

all: $(PROGS)

%: %.c
	gcc $(CFLAGS) -o bin/$@ $<

tests: test_2 test_3 test_5 clean

test_2:
	@gcc $(CFLAGS) -Wl, -e_main_tests -o bin/exercise_2 exercise_2.c
	@bin/exercise_2

test_3:
	@gcc $(CFLAGS) -Wl, -e_main_tests -o bin/exercise_3 exercise_3.c
	@bin/exercise_3

test_5:
	@gcc $(CFLAGS) -Wl, -e_main_tests -o bin/exercise_5 exercise_5.c
	@bin/exercise_5

clean:
	@rm -f bin/$(PROGS)