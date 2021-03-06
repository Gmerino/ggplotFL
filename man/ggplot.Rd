\docType{methods}
\name{ggplot,FLQuant-method}
\alias{ggplot,FLComp-method}
\alias{ggplot,FLComps-method}
\alias{ggplot,FLQuant-method}
\alias{ggplot,FLQuants-method}
\title{ggplot method for various FLR classes}
\usage{
\S4method{ggplot}{FLQuant}(data, ...)

\S4method{ggplot}{FLQuants}(data, ...)

\S4method{ggplot}{FLComp}(data, ...)

\S4method{ggplot}{FLComps}(data, ...)
}
\arguments{
  \item{data}{An \code{FLQuant} object}

  \item{...}{Other arguments to \link{ggplot}}
}
\description{
The \code{\link{ggplot}()} method has been conveniently
overloaded for various FLR classes. A call to
\code{\link{as.data.frame}} takes place on \code{data}
before passing all arguments to the original \code{ggplot}
method.
}
\details{
Please look at the relevant \code{as.data.frame} method for
each class to understand the naming conventions used in the
resulting \code{data.frame}
}
\examples{
dat <- rnorm(1, FLQuant(1, dim=c(5,10)), 0.5)
   ggplot(data=dat, aes(data, year)) + geom_point()
data(ple4)
   dat <- FLQuants(catch=catch(ple4), ssb=ssb(ple4))
   ggplot(data=dat, aes(data, year)) + geom_point() + facet_wrap(~qname)
}
\seealso{
\link{ggplot}, \url{http://github.com/flr/ggplotFL/}
}

