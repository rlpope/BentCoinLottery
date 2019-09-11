# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

# Small edit! from class 1!

num_coin_flips <- 10
heads <- 1
tails <- 0
roll <- i
chance <- 0.1
next_roll <- j
more_flips <- 100


lottery_ticket <- array(0, num_coin_flips)
for (roll in 1:num_coin_flips){
  lottery_ticket[roll] <- if (runif(heads) < chance) heads else tails
}

for (next_roll in 1:more_flips){
  lottery_ticket <- array(0, num_coin_flips)
  for (roll in 1:num_coin_flips){
    lottery_ticket[roll] <- if (runif(heads) < chance) heads else tails
  }
  print(lottery_ticket)
}
