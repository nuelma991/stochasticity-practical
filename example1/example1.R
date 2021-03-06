r <- user(0.5) # growth rate
N0 <- user(5)  # initial population size

dt <- 0.01

## Deterministic solution; approach to steady state over time
output(N_exact) <- N0 * exp(r*t)

## set up ODEs
initial(N_numeric) <- N0
deriv(N_numeric) <- r * N_numeric
