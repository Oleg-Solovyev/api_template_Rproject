# definition for endpoint1 of API1

endpoint1 <- function (parameter1 = 0, 
                       parameter2 = "",
                       res, 
                       req) {
  

  # 1) connect to DB -----
  my_con <- mysql_con()
  
  # check whether connection to DB successful
  if (is.null(my_con)) {
    res$status <- 502
    return(list(error = "can't connect to DB"))
  }
  
  # disconnect database
  on.exit(dbDisconnect(my_con))
  
  
  return("status code: 200")
  
} # end of function  
