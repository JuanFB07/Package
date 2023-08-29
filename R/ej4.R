ej4 <- function(x)

{
  library(nycflights13)
  library(tidyverse)
  library(knitr)

  cat("Currently `dep_time` and `sched_dep_time` are convenient to look at, but hard to compute with because they're not really continuous numbers. Convert them to a more convenient representation of number of minutes since midnight.\n")

  cat("library(nycflights13)\n")
  cat("library(tidyverse)\n")
  cat("library(knitr)\n")
  cat("\n")

  P8 <- flights %>% mutate( dep_time_mins = (dep_time %/% 100) * 60 + dep_time %% 100, sched_dep_time_mins = (sched_dep_time %/% 100) * 60 + sched_dep_time %% 100)

  cat("\n")

  cat("P8 <- flights %>% mutate( dep_time_mins = (dep_time %/% 100) * 60 + dep_time %% 100, sched_dep_time_mins = (sched_dep_time %/% 100) * 60 + sched_dep_time %% 100)\n")

  cat("\n")

  print(kable(P8[1:10, c(1, 14, 13, 9)],
        caption = "In this table you can see P8 information",
        align = "c"))

  cat("\n")

  cat(" Compare `air_time` with `arr_time - dep_time`. What do you expect to see? What do you see? What do you need to do to fix it?\n")
  cat("\n")
  P9 <- P8 %>% mutate(arr_dep_time_diff = arr_time - dep_time_mins) %>% filter(!is.na(air_time) & !is.na(arr_dep_time_diff)) %>% select(air_time, arr_dep_time_diff)
  cat("\n")
  cat("P9 <- P8 %>% mutate(arr_dep_time_diff = arr_time - dep_time_mins) %>% filter(!is.na(air_time) & !is.na(arr_dep_time_diff)) %>% select(air_time, arr_dep_time_diff)\n")

  print(kable(P9[1:2, c(1, 2)],
        caption = "In this table you can see P9 information",
        align = "c"))



}
