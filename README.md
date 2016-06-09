# Reverse Polish Notation Calculator

This is a super simple command-line implementation of a calculator using RPN
(Reverse Polish Notation).


## Usage

Make sure the script is executable:

    chmod +x ./script/rpn_calc

Fire it up:

    ./script/rpn_calc

Do maths:

    2
    > 2.0
    9
    > 9.0
    3
    > 3.0
    +
    > 12.0
    *
    > 24.0
    not_an_operator
    Error: Unexpected input: not_an_operator
    +
    Error: Insufficient stack size: 2+ operands required (1 present)
    42
    > 42.0
    -
    > -18.0
    q
    Exiting...

## Notes

- Operations are limited to the four basic operators: `+`, `-`, `*` and `/`.
- I chose to implement this as an executable for ease of use.
- All tests provided in the requirements document are implemented and passing:

        chmod +x ./script/tests && ./script/tests
