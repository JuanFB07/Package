ej6 <- function(x)

{
  library(nycflights13)
  library(tidyverse)
  library(knitr)

  cat("Which plane (`tailnum`) has the worst on-time record?")

  worst_punctuality <- flights %>%
    group_by(tailnum) %>%
    summarize(
      total_flights = n(),
      punctual_flights = sum(arr_delay <= 0, na.rm = TRUE),
      punctuality_percentage = (punctual_flights / total_flights) * 100
    ) %>%
    arrange(punctuality_percentage) %>%
    filter(!is.na(punctuality_percentage))

  worst_punctuality

  print(kable(worst_punctuality [1:10, c(1,2,3,4)],
        caption = "In this table you can see my_DF10 information",
        align = "c"))




}
