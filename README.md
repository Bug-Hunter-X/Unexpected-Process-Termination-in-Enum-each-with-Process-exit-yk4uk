# Elixir Bug: Unexpected Process Termination in Enum.each

This repository demonstrates a subtle bug in Elixir code that involves unexpected process termination due to improper usage of `Enum.each` and `Process.exit` within a function. The process exits prematurely when a specific condition is met, disrupting the intended flow of execution.

The `bug.ex` file contains the erroneous code. The solution, demonstrating a safer alternative using `Enum.map` or a try/catch block is found in `bugSolution.ex`

## How to reproduce:

1. Clone this repository.
2. Navigate to the project directory.
3. Run `elixir bug.ex`
4. Observe the unexpected termination and incomplete output.

## Solution:

Refer to the `bugSolution.ex` file for a corrected implementation using `Enum.map` or  a `try/catch` block to handle exceptions gracefully, preventing unexpected termination.