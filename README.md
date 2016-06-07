# Reverse Polish Notation Calculator

This is a super simple command-line implementation of a calculator using RPN
(Reverse Polish Notation).


## Usage
Make sure the script is executable:

    chmod +x ./script/rpn-calc

Fire it up:

    ./script/rpn-calc

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
