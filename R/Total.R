#' R DATA ANALYSIS
#'
# This classwork contains the dataframe flights, through the different libraries, allows the analysis and solution of different exercises.
#'
#' @param x  is the function that will take the value of Ejt (main function).
#' @return The solution for the specified exercise.
#' @export
#'
#' @import nycflights13
#' @import tidyverse
#' @import knitr
#'
#' @examples
#' # Retrieve the solution for exercise 3
#' Ejt(3)
#'
#' # Retrieve the solution for exercise 6
#' Ejt(6)
# Function to select questions and answers based on the exercise number

Ejt <- function(x)

  {

  if (x==1){
    return(ej1())
  }
  else if (x==2){

    return(ej2())
  }

  else if (x==3) {

    return(ej3())
  }

  else if (x==4) {

    return(ej4())

  }

  else if (x==5) {

    return(ej5())

  }

  else if (x==6) {

    return(ej6())

  }


  else

  {
    print ("Please select one option between 1 and 6")

  }

}

