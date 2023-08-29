ej1 <- function(x)
  {

  library(nycflights13)
  library(tidyverse)
  library(knitr)

  P <- nycflights13::flights

  P1 <- filter(P, arr_delay >="2")

  cat("Use the filter function to search for flights with an arrival delay of two hours or more.\n")

  cat("library(nycflights13)\n")
  cat("library(tidyverse)\n")
  cat("library(knitr)\n")
  cat("\n")

  cat(" P <- nycflights13::flights")

  cat("\n")

  cat("P1 <- filter(P, arr_delay >=2)\n")

  cat("\n")

  print(kable(P1[1:10, c(1, 14, 13, 9)],
              caption = "In this table you could see P1 information",
              align = "c"))
  cat("\n")

  cat("In the first point we made use of the filter function in order to obtain the data of the flights that had 2 or more hours of delay in arrival, for this we took the column arrive_delay and indicated that the data greater (>) 2 were displayed in the table above.\n")

  cat("\n")

  P2 <- nycflights13::flights

  P2.1  <- filter(P2, dest =="IAH")

  cat("\n")

  cat ("flew to Houston (IAH or HOU), I choose the IAH airport and filter it with the filter function.")

   cat("\n")

  cat("P2 <- nycflights13::flights")

  cat("\n")

  cat((" P2.1  <- filter(P2, dest ==IAH"))

  cat("\n")

  print(kable(P2.1[1:10, c(1, 14, 13, 9)],
        caption = "In this table you could see P2.1 information",
        align = "c"))

  cat("\n")

  cat("In the previous point we wanted to show the data of the flights that landed in Houston IAH or HOU. To develop this point we used the sign == which will allow us to take the data from the column with the word IAH.\n")



  }




