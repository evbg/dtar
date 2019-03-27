#!/bin/sh

test_shellcheck() {
    # Using ShellCheck - A shell script static analysis tool
    # https://github.com/koalaman/shellcheck#installing

    assertEquals  "$(shellcheck ./dtar)" "";
}

# Load shUnit2
# shUnit2 is a xUnit based unit test framework for Bourne based shell scripts.
# https://github.com/kward/shunit2

if ! test -e "./shunit2"; then
	  git clone https://github.com/kward/shunit2
fi

. ./shunit2/shunit2
