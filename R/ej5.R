ej5 <- function(x) {

  library(nycflights13)
  library(tidyverse)
  library(knitr)

  cat("Brainstorm at least 5 different ways to assess the typical characteristics of a group of fligh \n")

  cat("/n")

  cat("1) Median Arrival Delay:")

  cat("/n")

  cat("This method involves calculating the median arrival delay for a group of flights. The median represents the central value of the delays experienced upon arrival, giving insight into the typical delay scenario.\n")

  cat("/n")

  cat("2) Proportion of Flights with Specific Delays:")

  cat("/n")

  cat("By determining the percentage of flights arriving significantly early or late (e.g., 15 minutes, 30 minutes, or 2 hours), this method provides an understanding of the distribution of delay scenarios within the group \n")

  cat("/n")

  cat("3) Average Departure Delay: ")

  cat("Calculating the average delay before departure for a group of flights offers insight into the typical delay experienced before takeoff. This can provide information about potential operational issues.\n")

  cat("4) Punctuality Percentage: \n")

  cat("This method involves calculating the percentage of flights that are punctual (no arrival delay) and comparing it to the percentage of flights significantly delayed (2 hours late). It highlights the contrast between on-time flights and those with extreme delays\n")

  cat("5) Arrival Delay Distribution:\n")

  cat("Creating a histogram or density plot of arrival delays across all flights visualizes the distribution of delays. This helps identify common delay ranges and outliers, giving a clear picture of delay patterns.

These assessment methods provide diverse perspectives on the characteristics of flights' timeliness and delays, allowing for a comprehensive understanding of their operational performance.")

}
