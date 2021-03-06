\docType{methods}
\name{plot,FLQuants,missing-method}
\alias{plot,FLQuant,missing-method}
\alias{plot,FLQuants,missing-method}
\alias{plot,FLSR,missing-method}
\alias{plot,FLStock,FLPar-method}
\alias{plot,FLStock,missing-method}
\alias{plot,FLStocks,missing-method}
\title{ggplot versions of FLR class plot() methods}
\usage{
\S4method{plot}{FLQuants,missing}(x, main = "", xlab = "", ylab = "", ...)

\S4method{plot}{FLQuant,missing}(x, main = "", xlab = "", ylab = "", ...)

\S4method{plot}{FLStock,missing}(x, main = "", xlab = "", ylab = "", ...)

\S4method{plot}{FLStocks,missing}(x, main = "", xlab = "", ylab = "", ...)

\S4method{plot}{FLStock,FLPar}(x, y, ...)

\S4method{plot}{FLSR,missing}(x, ...)
}
\arguments{
  \item{x}{the coordinates of points in the plot.
  Alternatively, a single plotting structure, function or
  \emph{any \R object with a \code{plot} method} can be
  provided.}

  \item{...}{Arguments to be passed to methods, such as
  \link{graphical parameters} (see \code{\link{par}}).
  Many methods will accept the following arguments:
  \describe{ \item{\code{type}}{what type of plot should be
  drawn.  Possible types are \itemize{ \item \code{"p"} for
  \bold{p}oints, \item \code{"l"} for \bold{l}ines, \item
  \code{"b"} for \bold{b}oth, \item \code{"c"} for the
  lines part alone of \code{"b"}, \item \code{"o"} for both
  \sQuote{\bold{o}verplotted}, \item \code{"h"} for
  \sQuote{\bold{h}istogram} like (or \sQuote{high-density})
  vertical lines, \item \code{"s"} for stair \bold{s}teps,
  \item \code{"S"} for other \bold{s}teps, see
  \sQuote{Details} below, \item \code{"n"} for no plotting.
  } All other \code{type}s give a warning or an error;
  using, e.g., \code{type = "punkte"} being equivalent to
  \code{type = "p"} for S compatibility.  Note that some
  methods, e.g. \code{\link{plot.factor}}, do not accept
  this.  } \item{\code{main}}{an overall title for the
  plot: see \code{\link{title}}.} \item{\code{sub}}{a sub
  title for the plot: see \code{\link{title}}.}
  \item{\code{xlab}}{a title for the x axis: see
  \code{\link{title}}.} \item{\code{ylab}}{a title for the
  y axis: see \code{\link{title}}.} \item{\code{asp}}{the
  \eqn{y/x} aspect ratio, see \code{\link{plot.window}}.} }
  }

  \item{y}{the y coordinates of points in the plot,
  \emph{optional} if \code{x} is an appropriate structure.}
}
\description{
New basic plot for some FLR classes are defined in
ggplotFL.

New basic plot for some FLR classes are defined in
ggplotFL.

New basic plot for some FLR classes are defined in
ggplotFL.

New basic plot for some FLR classes are defined in
ggplotFL.

New basic plot for some FLR classes are defined in
ggplotFL.
}
\examples{
# Plot anf FLQuants created from ple4 FLStock
  data(ple4)
  plot(FLQuants(SSB=ssb(ple4), rec=rec(ple4)))
data(ple4)
  plot(catch.n(ple4))
data(ple4)
  plot(ple4)
data(ple4)
  pls <- FLStocks(runA=ple4, runB=qapply(ple4, function(x) x*1.10))
  plot(pls)
data(ple4)
  rps <- FLPar(Harvest=0.14, Catch=1.29e5, Rec=9.38e5, SSB=1.25e6)
  plot(ple4, rps)
data(nsher)
  plot(nsher)
}

