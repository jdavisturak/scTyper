% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/06.malignant.cellTyper.R
\name{malignant.cellTyper}
\alias{malignant.cellTyper}
\title{malignant.cellTyper}
\usage{
malignant.cellTyper(
  seurat,
  rda.dir = "./data",
  malignant.cell.type = "Epithelial",
  feature.to.test = c("cell.type", "tissue.type"),
  cells.test_reference = "immune"
)
}
\arguments{
\item{seurat}{Seurat object}

\item{rda.dir}{rData directory}

\item{malignant.cell.type}{Cell type to assign malignant cell}

\item{feature.to.test}{features to test as reference}

\item{cells.test_reference}{cells to test as reference}
}
\value{
Seurat object
}
\description{
A function to malignant cell typing
}
\details{
classification of malignant and non malignant seurat object.
}
