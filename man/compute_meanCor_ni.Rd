% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summaryStatistics.R
\name{compute_meanCor_ni}
\alias{compute_meanCor_ni}
\title{Compute the Mean Correlation of Methylation State in Non-islands}
\usage{
compute_meanCor_ni(
  index_nonislands,
  minN_CpG,
  shore_length,
  data,
  sample_n,
  categorized_data = FALSE
)
}
\arguments{
\item{index_nonislands}{A vector containing the structural indices for non-islands.}

\item{minN_CpG}{The minimum number of central CpGs required for computation.}

\item{shore_length}{The number of CpGs at each side of an non-island to exclude (shores).}

\item{data}{A list containing methylation states at tree tips for each genomic structure (island / non-island)
For a single tip: \code{data[[structure]]}.
For multiple tips: \code{data[[tip]][[structure]]}.
Each element contains the methylation states at the sites in a given tip and structure
represented as 0, 0.5 or 1 (for unmethylated, partially-methylated and methylated).
If methylation states are not represented as 0, 0.5, 1 they are categorized
as 0 when value equal or under 0.2
0.5 when value between 0.2 and 0.8
and 1 when value over 0.8.
For customized categorization thresholds use \code{categorize_siteMethSt}}

\item{sample_n}{The number of tips (samples) to process.}

\item{categorized_data}{Logical defaulted to FALSE.
TRUE to skip redundant categorization when methylation states are represented as 0, 0.5, and 1.}
}
\value{
A numeric value representing the mean correlation of methylation states in the central CpGs of non-islands.
}
\description{
This function calculates the mean correlation of methylation states within
non-island structures, allowing to exclude the shores.
}
\details{
The function processes only non-islands with a minimum length equal to \code{2 * shore_length + minN_CpG}.
If none has minimum length, returns NA
}
\examples{
# Example usage:
index_nonislands <- c(1, 2)
data <- list(
  list(c(0, 1, 0.5, 1, 0.5, 0), c(0.5, 0.5, 1, 1, 0, 0)), # tip 1
  list(c(1, 0, 1, 1, 0.5, 0), c(1, 1, 0.5, 0.5, 0, 1))   # tip 2
)
minN_CpG <- 2
shore_length <- 1
sample_n <- 2
compute_meanCor_ni(index_nonislands, minN_CpG, shore_length, data, sample_n,
                    categorized_data = TRUE)

}
