% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{fDColorPalette}
\alias{fDColorPalette}
\title{A set of fancy color to plot functional datasets}
\usage{
fDColorPalette(N, hue_range = c(0, 360), alpha = 0.8, ...)
}
\arguments{
\item{N}{number of different colors (ideally, functional observations).}

\item{hue_range}{the range of hues in the HCL scheme.}

\item{alpha}{the alpha channel parameter(s) of the colors (transparency).}

\item{...}{additional parameters to be passed to \code{scales::hue_pal}}
}
\description{
This function can be used to generate a palette of colors useful to plot
functional datasets with the \code{plot} methods.
}
\details{
The function, built around \code{scales::hue_pal}, allows to set up the
HCL parameters of the set of colors desired, and besides to set up the
alpha channel value.
}
\examples{

N = 1e2
angular_grid = seq( 0, 359, length.out = N )

dev.new()
plot( angular_grid, angular_grid,
      col = fDColorPalette( N, hue_range = c( 0, 359 ), alpha = 1 ),
      pch = 16, cex = 3 )

}
\seealso{
\code{\link{plot.fData}}, \code{\link{plot.mfData}}
}
