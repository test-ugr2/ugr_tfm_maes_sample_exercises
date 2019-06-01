SRCS = $(wildcard *.c)
PROGS = $(patsubst %.c,%,$(SRCS))

all: $(PROGS)

%: %.c
	gcc -o $@ $<

tests: test_2 test_3 test_5 clean

test_2:
	@sed -i -e "s/main_tests/main/" minunit.h
	@sed -i -e "s/main/main_old/" exercise_2.c
	@gcc -o exercise_2 exercise_2.c
# 	@gcc -Wl,-e_main_tests -o exercise_2 exercise_2.c
	@./exercise_2

test_3:
	@sed -i -e "s/main_tests/main/" minunit.h
	@sed -i -e "s/main/main_old/" exercise_3.c
	@gcc -o exercise_3 exercise_3.c
# 	@gcc -Wl,-e_main_tests -o exercise_3 exercise_3.c
	@./exercise_3

test_5:
	@sed -i -e "s/main_tests/main/" minunit.h
	@sed -i -e "s/main/main_old/" exercise_5.c
	@gcc -o exercise_5 exercise_5.c
# 	@gcc -Wl,-e_main_tests -o exercise_5 exercise_5.c
	@./exercise_5

clean:
	@rm -f $(PROGS)
