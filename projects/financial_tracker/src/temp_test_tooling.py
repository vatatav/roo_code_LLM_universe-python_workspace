# temp_test_tooling.py

import os  # Intentionally unused import for Flake8


def greet(name: str) -> str:
    """Greets the person."""
    return "Hello, " + name  # Mypy might catch this if strict, or just be fine


def add_numbers(a: int, b: str) -> int:  # Deliberate type error for Mypy
    """Adds two numbers?"""
    result = a + b  # Type error here
    return result


def long_function_with_some_really_really_long_lines_that_should_definitely_exceed_the_pep8_limit_for_line_length_to_test_black_and_flake8(
    parameter1, parameter2, parameter3, parameter4, parameter5
):
    print(
        "This line is very long and should be formatted by Black and flagged by Flake8 for E501 if not formatted."
    )
    pass


if __name__ == "__main__":
    print(greet("World"))
    # print(add_numbers(5, "oops")) # Keep this commented to avoid runtime error during manual check
    long_function_with_some_really_really_long_lines_that_should_definitely_exceed_the_pep8_limit_for_line_length_to_test_black_and_flake8(
        1, 2, 3, 4, 5
    )

# Deliberately unformatted lines below for Black to fix:
x = 1
y = 2
z = x + y
print(z)
