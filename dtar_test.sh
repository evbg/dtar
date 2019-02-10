#!/bin/sh

test_shellcheck() {
    # Using ShellCheck - A shell script static analysis tool
    # https://github.com/koalaman/shellcheck#installing

    assertEquals  "$(shellcheck ./dtar)" "";
}

# Load shUnit2
# shUnit2 is a xUnit based unit test framework for Bourne based shell scripts.
# https://github.com/kward/shunit2
. ./shunit2/shunit2
