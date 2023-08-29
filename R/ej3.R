ej3 <- function(x)

{
  library(nycflights13)
  library(tidyverse)
  library(knitr)

  cat("\n")

  cat(" What happens if you include the name of a variable multiple times in a select() call?\n")

  cat("\n")

  cat("The variable is consistently present multiple times within an outcome\n")

  cat("\n")

  cat("What does the any_of()function do? Why might it be helpful in conjunction with this vector?\n")

  cat("\n")

  vars <- c("year", "month", "day", "dep_delay", "arr_delay")

  cat("\n")

  cat("vars <- c(year, month, day,dep_delay,arr_delay\n")

  cat("\n")

  cat("Answer: The any_of() function is employed to choose specific columns from a data frame using a character vector of column names. This can be valuable for the mentioned line of code.\n")

  cat("\n")

  cat("Does the result of running the following code surprise you? How do the select helpers deal whit case by default? How can you change that default?\n")

  select(flights, contains("TIME"))

  cat("select(flights, contains(TIME))")

  cat("1): The dataset is grouped by aircraft tail number (tailnum), allowing subsequent calculations to be done separately for each aircraft.\n")

  cat("\n")

  cat("2) The summarize() function is used to calculate summary statistics for each aircraft. Inside the summarize() function:\n")
  cat("\n")
  cat("2.1) total_flights is determined using the n() function, which counts the total number of flights for each aircraft.\n")
  cat("\n")
  cat("2.2) punctual_flights is calculated using the sum() function, counting flights where the arrival delay (arr_delay) is less than or equal to 0 (on-time or early arrivals). The argument na.rm = TRUE handles missing values in the arr_delay column. \n")
  cat("\n")
  cat("2.3) punctuality_percentage is computed as the ratio of punctual flights to total flights, multiplied by 100 to obtain the percentage.\n")
  cat("\n")
  cat("3) After summarization, the groups (aircraft) are sorted using the arrange() function based on their punctuality percentages in ascending order. This means aircraft with the lowest punctuality percentages will be listed first.\n")
  cat("\n")
  cat("4) The filter() function is employed to remove rows where the punctuality_percentage is not available (NA).\n")
  cat("\n")
  cat("5) The resulting dataset is stored in the variable worst_punctuality, which contains information such as aircraft tail numbers, total flights, punctual flights, and corresponding punctuality percentages.\n")
  cat("\n")
  cat("6) Finally, the worst_punctuality dataset is displayed, showing the tail numbers of aircraft with the lowest punctuality percentages.\n")



}
