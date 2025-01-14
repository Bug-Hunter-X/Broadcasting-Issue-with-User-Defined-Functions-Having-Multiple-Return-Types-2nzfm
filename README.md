# Julia Broadcasting Issue with Multiple Return Types

This repository demonstrates a subtle bug related to broadcasting in Julia with user-defined functions that have multiple return types (e.g., depending on conditional logic).

The `bug.jl` file contains a function `myfunction` that squares its input.  However, when broadcasting this function over an array, it fails to produce the expected result due to a type instability or method matching issue.

The `bugSolution.jl` file provides a corrected version of the function, addressing the broadcasting issue.

## How to Reproduce

1.  Clone this repository.
2.  Run `bug.jl`. Observe the error when broadcasting the function.
3.  Run `bugSolution.jl` to see the corrected behavior.

## Solution
The solution involves ensuring the function's return type is consistent or using techniques to handle the different cases appropriately during broadcasting.