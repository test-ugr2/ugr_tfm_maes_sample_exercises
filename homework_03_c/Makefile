SRCS = $(wildcard *.c)
PROGS = $(patsubst %.c,%,$(SRCS))

all: $(PROGS)

%: %.c
	gcc $(CFLAGS) -o $@ $<

tests: test_2 test_3 test_5 clean

test_2:
	@gcc $(CFLAGS) -Wl, -e_main_tests -o exercise_2 exercise_2.c
	@./exercise_2

test_3:
	@gcc $(CFLAGS) -Wl, -e_main_tests -o exercise_3 exercise_3.c
	@./exercise_3

test_5:
	@gcc $(CFLAGS) -Wl, -e_main_tests -o exercise_5 exercise_5.c
	@./exercise_5

clean:
	@rm -f $(PROGS)