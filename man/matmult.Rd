% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ddmatrix_matmult.r
\docType{methods}
\name{matmult}
\alias{\%*\%,ddmatrix,ddmatrix-method}
\alias{crossprod,ddmatrix-method}
\alias{matmult}
\alias{tcrossprod,ddmatrix-method}
\title{Matrix Multiplication}
\usage{
\S4method{\%*\%}{ddmatrix,ddmatrix}(x, y)

\S4method{crossprod}{ddmatrix}(x, y = NULL)

\S4method{tcrossprod}{ddmatrix}(x, y = NULL)
}
\arguments{
\item{x,y}{numeric distributed matrices}
}
\value{
Returns a distributed matrix.
}
\description{
Multiplies two distributed matrices, if they are conformable.
}
\details{
\code{x} and \code{y} must be conformable, on the same BLACS context, but
they need not be blocked with the same blocking dimension. The return will
default to the blocking dimension of \code{x}.

If you need to use \code{x} and \code{y} with differing blocking dimensions
and you want the return to have blocking different from that of \code{x},
then use the function \code{base.rpdgemm()}.

The \code{crossprod()} and \code{tcrossprod()} functions behave exactly as
their R counterparts.
}
\examples{
\dontrun{
# Save code in a file "demo.r" and run with 2 processors by
# > mpiexec -np 2 Rscript demo.r

library(pbdDMAT, quiet = TRUE)
init.grid()

# don't do this in production code
x <- matrix(1:9, 3)
x <- as.ddmatrix(x)

y <- x \%*\% x
print(y)

finalize()
}
}
\keyword{Algebra}
\keyword{Linear}
\keyword{Methods}

