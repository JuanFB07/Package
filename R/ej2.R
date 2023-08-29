ej2 <- function(x)

{
  library(nycflights13)
  library(tidyverse)
  library(knitr)

  cat("\n")

  cat("How could you use arrange() to sort all missing values to the start? (Hint: use is.na()). As the help indicates, it´s used to check if the elements being parsed are missing values or NA.\n")

  cat("\n")

  cat("library(nycflights13)\n")
  cat("library(tidyverse)\n")
  cat("library(knitr)\n")
  cat("\n")

  P3 <- flights %>% arrange(desc(is.na(dep_time)))

  cat("P3 <- flights %>% arrange(desc(is.na(dep_time)))")

  cat("\n")

  print(kable(P3[1:10, c(1, 14, 13, 9)],
              caption = "In this table you could see P3 information",
              align = "c"))
  cat("\n")

  cat("For the previous exercise we used the arrange function to first organize or locate the data that was empty in the dep_time column.\n")

  cat("Sort the flights to find the most delayed flights. Find the flights that left the earliest. For the development of this item we used the data from the colimna (arr_delay), these were ordered from longest to shortest delay\n")

  P4 <- flights %>% arrange(desc(arr_delay))

  cat(" P4 <- flights %>% arrange(desc(arr_delay))")

  cat("\n")

  print(kable(P4[1:10, c(1, 14, 13, 9)],
              caption = "In this table you can see P4 information",
              align = "c"))
  cat("\n")

  cat("In the previous exercise, the arrange function was used to organize the data of the flights that had the most delays in arriving at their destination. Taking into account the parameter desc. This will allow us to have the organization from the longest to the shortest.\n")

  cat("\n")

  cat ("Sort the flights to find the fastest ones (higher speed)\n")


   P5 <- flights %>% mutate(speed = distance / air_time)%>% arrange((desc(speed)))

   cat("\n")

  cat("P5 <- flights %>% mutate(speed = distance / air_time)%>% arrange((desc(speed)))")

  cat("\n")

  print(kable(P5[1:10, c(1, 14, 13, 11, 20)],
        caption = "In this table you can see P5 information",
        align = "c"))

  cat("\n")

  cat("For the previous exercise we made use of the mutate function in order to add a new column that will contain the speed data of each flight, for this, we took the distance and the air time that the plane had, we applied the formula V = D/T, in this way we could determine which is the speed of each flight.Finally, the data was organized in such a way as to visualize first the flights that had the highest speed.\n")

  cat("\n")

  cat ("Which are the farthest and the shortest flights?")

  P6 <- flights %>% arrange(desc(distance))

  cat("\n")

  P7 <- flights %>% arrange(distance)

  cat("\n")

  cat("P6 <- flights %>% arrange(desc(distance))\n")

  cat("\n")

  cat("P7 <- flights %>% arrange(distance)\n")


  print(kable(P6[1:10, c(1, 14, 13, 16)],
        caption = "In this table you can see P6 information",
        align = "c"))

  cat("\n")

  print(kable(P7[1:10, c(1, 14, 13, 16)],
             caption = "In this table you can see P7 information",
             align = "c"))

  cat("\n")

  cat("In the previous point, we made use of the arrange function in order to organize the data of the distance column, taking into account the desc particle that allows us to organize the data from highest to lowest, identifying the flights that took the longest distance.\n")


}
