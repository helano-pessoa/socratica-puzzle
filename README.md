## Estado da revisão ORKit — 22/09/2026

Estudo anterior em Julia/JuMP/Cbc, baseado em um desafio da Socratica com atribuição preservada. O notebook correto está em [Puzzle.ipynb](Puzzle.ipynb), e o modelo em [puzzle.jl](puzzle.jl). O código não foi reexecutado nesta revisão.

Serve como registro de aprendizagem. Os puzzles novos do ORKit terão enunciados e dados próprios; este desafio não será vendido como criação original.


# socratica-puzzle


*There are 64 ways to combine $1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \frac{1}{5}, \frac{1}{6}$ by adding and subtracting. How close to zero can you get?* I got this from [Socratica](https://www.socratica.com/). The description above is available [here](https://www.instagram.com/p/CSJ-GBlqU_A/).

The puzzle was formulated as an optimization problem which objective is to minimize the sum of the coefficients multiplied by the variable `x` which can take ​​-1 or 1. In addition, this sum must be greater than or equal to zero.

The mathematical modeling was written using [Julia](https://julialang.org/) Language and [JuMP](https://github.com/jump-dev/JuMP.jl) package which I consider the best open source tool for modeling optimization problems. I've used
[Cbc](https://github.com/jump-dev/Cbc.jl) solver as engine to solve the problem but you can feel free to choose any other solver if you want. The solution is available on [puzzle.ipynb](Puzzle.ipynb).

**PS:** *Socratica friends have this precious [channel](https://www.youtube.com/socratica) about science on YouTube. I recommend it to all those who enjoy funny videos about curious subjects.*
