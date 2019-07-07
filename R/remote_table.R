# Helper function remote_table; scrapes the observation records
#' @importFrom xml2 read_html
#' @importFrom rvest html_table

remote_table <- function(remdriver, wait){

  x <- remdriver$findElement('class', 'styledtable')
  Sys.sleep(wait)
  x <- x$getPageSource()[[1]]
  x <- read_html(x)
  x <- html_table(x)[[1]]

  return(x)
}


