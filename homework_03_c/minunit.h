 /* file: minunit.h */
 #define mu_assert(message, test) do { if (!(test)) return message; } while (0)
 #define mu_run_test(test) do { char *message = test(); tests_run++; \
                                if (message) return message; } while (0)
int tests_run;

char * all_tests();

// This function acts as entrypoint for TDD
int main_tests(int argc, char **argv) {
     char *result = all_tests();
     if (result != 0) {
         printf("%s\n", result);
     }
     else {
         printf("ALL TESTS PASSED on %s\n", argv[0]);
     }
     printf("Tests run: %d\n", tests_run);

     return result != 0;
}