\name{CisBP.extdata}
\alias{CisBP.extdata}
\title{
Load internal CisBP dataset.
}
\description{
Build a CisBP object from the internal zip file stored in this package
}
\usage{
CisBP.extdata(species)
}
\arguments{
  \item{species}{ String, only valid for human and mouse species, i.e. Homo_sapiens or Mus_musculus }
}
\details{
}
\value{
A CisBP object (class name: CisBP.db) is returned with four items:
  \item{species}{String indicating the species name defined in the CisBP dataset.}
  \item{zip.file}{String indicating the filename of temporary data file.}
  \item{zip.url}{String indicating the download source }
  \item{file.tfinfo}{String indicating the TF filename, defulat is TF_Information.txt.}
}

\seealso{
See Also as \code{\link{CisBP.zipload}}, \code{\link{CisBP.download}}.
}
\examples{

#reading data from inner file
db.human <- CisBP.extdata("Homo_sapiens")

}
\keyword{CisBP object}