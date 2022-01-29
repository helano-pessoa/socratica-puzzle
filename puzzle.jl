# Load packages
using JuMP
using Cbc

# Define the coefficient vector and its size
coefficients = [1, 1/2, 1/3, 1/4, 1/5, 1/6]
size = length(coefficients)

# Create the model and set cbc as solver
puzzle = Model(Cbc.Optimizer)

# Silence the solver log (optional)
set_silent(puzzle)

# Create x variables. We can take -1 or 1.
@variable(puzzle, -1 <= x[1:size] <= 1, Int)

# Create y variables. This is an 'aid variable' to help us to set -1 or 1 in x variables.
@variable(puzzle, y[1:size], Bin)

# Create objective function. Minimize the sum of the coefficients multiplied by the variable `x`.
@objective(puzzle, Min, sum(coefficients[i] * x[i] for i in 1:size))

# Create constraint to prevent the sum above assume a negative value.
@constraint(puzzle, sum(coefficients[i] * x[i] for i in 1:size) >= 0)

# Create constraint to set -1 or 1 in x variables.
@constraint(puzzle, [i=1:size], x[i] == 2y[i] - 1)

# Solve the problem.
optimize!(puzzle)

# Get value of the objective function.
objective_value(puzzle)

# Get x values. We can understand these values as the signal of each coefficient.
value.(x)