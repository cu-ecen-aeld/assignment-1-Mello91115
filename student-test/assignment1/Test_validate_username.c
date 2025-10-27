#include "unity.h"
#include <stdlib.h>

#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

/**
 * This test compares the hardcoded username from my_username()
 * against the value loaded from conf/username.txt.
 */
void test_validate_my_username(void)
{
    char *expected = malloc_username_from_conf_file();   // from conf/username.txt
    const char *actual = my_username();                  // your hardcoded username

    TEST_ASSERT_EQUAL_STRING_MESSAGE(
        expected,
        actual,
        "Usernames do not match — check conf/username.txt and my_username()"
    );

    free(expected);
}

