% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/details.R
\name{details}
\alias{details}
\title{Retrieve images and meta-data for a specific record (specimen)}
\usage{
details(x, id)
}
\arguments{
\item{x}{object of S4 class \code{records} (output of \code{symbiota})}

\item{id, }{as found in output of \code{records}}
}
\description{
Retrieve images and meta-data for a specific record (specimen)
}
\examples{
\dontrun{
# use function records to download records; then use one of the IDs:
spec.dist <- symbiota(taxon = "Amanita muscaria", db = "mycoportal", wait = 4)
pic <- details(spec.dist, id = 2136920)
# Look at one of the images in more detail
print(image_read(pic$urls[1])) # a rather orangeish specimen
library(magick)
par(mfrow = c(1,3))
plot(image_read(pic$urls[1]))
plot(image_read(pic$urls[2]))
plot(image_read(pic$urls[3]))
# Look at meta data
pic$meta
}
}
\author{
Franz-Sebastian Krah
}
