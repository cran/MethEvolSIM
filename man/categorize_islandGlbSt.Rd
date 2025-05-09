% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summaryStatistics.R
\name{categorize_islandGlbSt}
\alias{categorize_islandGlbSt}
\title{Categorize Global States of CpG Islands}
\usage{
categorize_islandGlbSt(meanMeth_islands, u_threshold, m_threshold)
}
\arguments{
\item{meanMeth_islands}{A numeric vector containing the mean methylation levels for CpG islands at each tip.}

\item{u_threshold}{A numeric value (0-1) defining the threshold for categorization as unmethylated.}

\item{m_threshold}{A numeric value (0-1) defining the threshold for categorization as methylated.}
}
\value{
A character vector of length equal to \code{meanMeth_islands}, containing "u", "p", or "m" for each island.
}
\description{
This function categorizes CpG islands into unmethylated, methylated, or partially methylated states
based on specified thresholds.
}
\details{
The function assigns each island a state:
\describe{
\item{"u"}{if mean methylation lower or equal than \code{u_threshold}}
\item{"m"}{if mean methylation greater or equal than \code{m_threshold}}
\item{"p"}{if mean methylation is in between}
}
}
\examples{
meanMeth_islands <- c(0.1, 0.4, 0.8)

categorize_islandGlbSt(meanMeth_islands, 0.2, 0.8)

}
