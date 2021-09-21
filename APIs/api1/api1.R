# run this file by clicking Run API

# #=== load functions for API  =======================================================
path_to_functions <- c("R/")             # set path
my_functions <- list.files(path_to_functions, "*.[rR]")  # locate all .R files
purrr::map(paste0(path_to_functions, my_functions),
          source)  # source all R scripts!
# #==========================================================================


# source scripts with endpoint functions -----
source("endpoint1.R")

# start /endpoint1 ======

#* api template
#* @param:int query parameter1
#* @param:char query parameter2
#* @serializer json
#* @get /endpoint1
endpoint1