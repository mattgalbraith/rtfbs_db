\name{tfbs-class}
\Rdversion{1.1}
\docType{class}
\alias{tfbs-class}
\alias{tfbs.clusterMotifs,tfbs-method}
\alias{tfbs.drawLogo,tfbs-method}
\alias{tfbs.drawLogosForClusters,tfbs-method}
\alias{tfbs.enrichmentTest,tfbs-method}
\alias{tfbs.getExpression,tfbs-method}
\alias{tfbs.importMotifs,tfbs-method}
\alias{tfbs.selectExpressedMotifs,tfbs-method}
\alias{tfbs.scanTFsite,tfbs-method}
\alias{tfbs.selectByGeneExp,tfbs-method}
\alias{tfbs.selectByRandom,tfbs-method}

\title{Class \code{"tfbs"}}
\description{
Tfbs object is a collection of motif PWM data. Some functions are provided based on the PWM and GENCODE data, such as clustering, search and compare.
}
\section{Objects from the Class}{
Objects can be created by calls of the function of \code{\link{tfbs.createFromCisBP}}, \code{\link{tfbs.dirs}} and \code{\link{tfbs}}.
}
\section{Slots}{
  \describe{
  \item{species}{String indicating the species name}
  \item{ntfs}{Number of motifs in matrix.}
  \item{pwm}{A list including PWM matics.}
  \item{filename}{Vector of PWM filename.}
  \item{mgisymbols}{Unique gene symbols for TF.}
  \item{tf_info}{Data frame, including extra information for all existing PWMs, it maybe different with motif dataset, default:NULL.}
  \item{tf_missing}{Data frame, including extra information for missing PWMs, it maybe different with motif dataset, default:NULL.}
  \item{distancematrix}{Distance matrix between motifs returned by \code{\link{tfbs.clusterMotifs}}, default:NULL.}
  \item{expressionlevel}{Data frame indicatig the result of expression level returned by \code{\link{tfbs.selectExpressedMotifs}} or \code{\link{tfbs.getExpression}}, default:NULL. }
  \item{cluster}{Matrix with 3 columns returned by \code{\link{tfbs.clusterMotifs}}, 1st column is the index of motifs, 2nd column is the group number of clustering, 3rd column is selected flag by the function \code{tfbs.selectByGeneExp} or \code{tfbs.selectByRandom}. default:NULL. }
  }
}
\section{Methods}{
  \describe{
    \item{tfbs.importMotifs}{Import the licensed motifs or other missing motifs for tfbs object}
    \item{tfbs.getExpression}{Estimate gene expression of target TF.}
    \item{tfbs.selectExpressedMotifs}{Select the expressed motifs in GRO-seq, PRO-seq or RNA-seq experimental data.}
    \item{tfbs.clusterMotifs}{Cluster the specified motifs and drawing the heatmap.}
    \item{tfbs.scanTFsite}{Find TF sites from genome data within the BED ranges.}
    \item{tfbs.enrichmentTest}{Comparative TFBS search with the BED ranges}
    \item{tfbs.selectByGeneExp}{Select the motifs with minimum p-value from each group of clustering.}
    \item{tfbs.selectByRandom}{Select the motifs randomly from each group of clustering.}
    \item{tfbs.drawLogosForClusters}{Draw the motif logos by one group per page. }
    \item{tfbs.drawLogo}{Draw the logo for a single TF motif.}
  }
}
\seealso{
The class definition of tfbs.
}
\examples{
showClass("tfbs")
}
\keyword{classes}
