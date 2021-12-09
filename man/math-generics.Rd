\name{Math-methods}

\docType{methods}

\alias{Math-methods}
\alias{Math2-methods}

\alias{Math,SpatRaster-method}
\alias{Math2,SpatRaster-method}

\alias{Math,SpatExtent-method}
\alias{Math2,SpatExtent-method}

\alias{log}
\alias{log,SpatRaster-method}
\alias{round}
\alias{round,SpatRaster-method}
\alias{sqrt}
\alias{sqrt,SpatRaster-method}

\alias{math}
\alias{math,SpatRaster-method}

\title{General mathematical methods}

\description{

Standard mathematical methods for computations with SpatRaster objects. Computations are local (applied on a cell by cell basis). If multiple SpatRaster objects are used, these must have the same extent and resolution. These have been implemented:
 
\code{abs, sign, sqrt, ceiling, floor, trunc,  cummax, cummin, cumprod, cumsum, log, log10, log2, log1p, acos, acosh, asin, asinh, atan, atanh, exp, expm1, cos, cosh, sin, sinh, tan, tanh, round, signif}

Instead of directly calling these methods, you can also provide their name to the \code{math} method. This is useful if you want to provide an output filename.

The following methods have been implemented for \code{SpatExtent} objects: \code{round, floor, ceiling}
}

\usage{
\S4method{sqrt}{SpatRaster}(x)

\S4method{log}{SpatRaster}(x, base=exp(1))

\S4method{round}{SpatRaster}(x, digits=0)

\S4method{math}{SpatRaster}(x, fun, digits=0, filename="", overwrite=FALSE, ...)
}

\seealso{
See \code{\link{app}} to use mathematical functions not implemented by the package, and \code{\link{Arith-methods}} for arithmetical operations
}


\arguments{
\item{x}{SpatRaster}
\item{base}{a positive or complex number: the base with respect to which logarithms are computed}
\item{digits}{Number of digits for rounding}
\item{fun}{character. Math function name}
\item{filename}{character. Output filename}
\item{overwrite}{logical. If \code{TRUE}, \code{filename} is overwritten}
\item{...}{additional arguments for writing files as in \code{\link{writeRaster}}}
}

\value{
SpatRaster or SpatExtent
}



\examples{
r1 <- rast(ncols=10, nrows=10)
v <- runif(ncell(r1))
v[10:20] <- NA
values(r1) <- v
r2 <- rast(r1)
values(r2) <- 1:ncell(r2) / ncell(r2)
r <- c(r1, r2)

s <- sqrt(r)
# same as 
math(r, "sqrt")

round(s, 1)
}

\keyword{methods}
\keyword{math}
\keyword{spatial}