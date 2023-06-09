% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bmtest.h.R
\name{bmtest}
\alias{bmtest}
\title{Brunner-Munzel Test}
\usage{
bmtest(
  data,
  vars,
  group,
  hypothesis = "different",
  relEff = FALSE,
  ci = FALSE,
  ciWidth = 95,
  miss = "perAnalysis",
  asym = TRUE,
  randomPerm = FALSE,
  n_perm = 10000,
  etl = 5,
  fullPerm = FALSE,
  formula
)
}
\arguments{
\item{data}{the data as a data frame}

\item{vars}{the dependent variables (not necessary when using a formula,
see the examples)}

\item{group}{the grouping variable with two levels (not necessary when
using a formula, see the examples)}

\item{hypothesis}{\code{'different'} (default), \code{'oneGreater'} or
\code{'twoGreater'}, the alternative hypothesis; group 1 different to group
2, group 1 greater than group 2, and group 2 greater than group 1
respectively}

\item{relEff}{\code{TRUE} or \code{FALSE} (default), provide estimate of
relative effect}

\item{ci}{\code{TRUE} or \code{FALSE} (default), provide confidence
intervals}

\item{ciWidth}{a number between 50 and 99.9 (default: 95), the width of
confidence intervals}

\item{miss}{\code{'perAnalysis'} or \code{'listwise'}, how to handle
missing values; \code{'perAnalysis'} excludes missing values for individual
dependent variables, \code{'listwise'} excludes a row from all analyses if
one of its entries is missing.}

\item{asym}{\code{TRUE} (default) or \code{FALSE}, Compute p values and
confidence intervals using t-approximation}

\item{randomPerm}{\code{TRUE} or \code{FALSE} (default), Compute p values
and confidence intervals using random permutations}

\item{n_perm}{a integer (default 10000), the number of random permutations}

\item{etl}{a integer (default 5), limit on elapsed cpu time in seconds}

\item{fullPerm}{\code{TRUE} or \code{FALSE} (default), Compute p values and
confidence intervals using ALL permutations}

\item{formula}{(optional) the formula to use, see the examples}
}
\value{
A results object containing:
\tabular{llllll}{
  \code{results$bmtest} \tab \tab \tab \tab \tab a table containing the Brunner Munzel Test results \cr
}

Tables can be converted to data frames with \code{asDF} or \code{\link{as.data.frame}}. For example:

\code{results$bmtest$asDF}

\code{as.data.frame(results$bmtest)}
}
\description{
The Brunner–Munzel test for stochastic comparability of two samples.
}
\examples{
library(jmv) # to get ToothGrowth data set
data('ToothGrowth')
bmtest(formula = len ~ supp, data = ToothGrowth)
# BRUNNER-MUNZEL TEST
#
# Brunner-Munzel Test
# -----------------------------------------------------------
#                        Statistic    df          p
# -----------------------------------------------------------
#   len    Asymptotic    -1.896526    54.67724    0.0631786
# -----------------------------------------------------------
#   Note. Ha P̂(OJ < VC) + ½P̂(OJ = VC) != ½

}
