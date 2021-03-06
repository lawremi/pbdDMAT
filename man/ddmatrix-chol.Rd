% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ddmatrix_chol.r
\docType{methods}
\name{ddmatrix-chol}
\alias{chol}
\alias{chol,ddmatrix-method}
\alias{ddmatrix-chol}
\title{Cholesky Factorization}
\usage{
\S4method{chol}{ddmatrix}(x)
}
\arguments{
\item{x}{numeric distributed matrices.}

\item{...}{Ignored.}
}
\value{
\code{chol()} performs Cholesky factorization.
}
\description{
Cholesky factorization for distributed matrices with R-like syntax, with
calculations performed by the PBLAS and ScaLAPACK libraries.
}
\details{
Extensions of R linear algebra functions.
}
\examples{
\dontrun{
# Save code in a file "demo.r" and run with 2 processors by
# > mpiexec -np 2 Rscript demo.r

library(pbdDMAT, quiet = TRUE)
init.grid()

x <- ddmatrix(1:9, 3, bldim=2)

y <- solve(crossprod(x))
y

finalize()
}
}
\keyword{Algebra}
\keyword{Linear}
\keyword{Methods}

