# socratica-puzzle


*There are 64 ways to combine 1, 1/2, 1/3, 1/4, 1/5, 1/6 by adding and subtracting. How close to zero can you get?* I got this from [Socratica](https://www.socratica.com/). The description above is available [here](https://www.instagram.com/p/CSJ-GBlqU_A/).

The puzzle was formulated as an optimization problem which objective is to minimize the sum of the coefficients multiplied by the variable `x` which can take ​​-1 or 1. In addition, this sum must be greater than or equal to zero.

The mathematical modeling was written using [Julia](https://julialang.org/) Language and [JuMP](https://github.com/jump-dev/JuMP.jl) package which I consider the best open source tool for modeling optimization problems. I've used
[Cbc](https://github.com/jump-dev/Cbc.jl) solver as engine to solve the problem but you can feel free to choose any other solver if you want. The solution is available on [puzzle.ipynb](https://github.com/helano-pessoa/socrativa-puzzle/blob/main/Puzzle.ipynb).

**PS:** *Socratica friends have this precious [channel](https://www.youtube.com/socratica) about science on YouTube. I recommend it to all those who enjoy funny videos about curious subjects.*
