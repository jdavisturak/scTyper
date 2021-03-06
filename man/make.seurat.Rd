% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/03.seurat.R
\name{make.seurat}
\alias{make.seurat}
\title{make.seurat}
\usage{
make.seurat(count.dir, sample.name = sample.name, project = "SeuratProject", min.cells=0, min.features=0)
}
\arguments{
\item{count.dir}{Path of the cellranger count directory}

\item{sample.name}{single cell RNA sequening sample name}

\item{project}{project name(string)}

\item{min.cells}{Include genes with detected expression in at least this many cells. Will subset the raw.data matrix as well. To reintroduce excluded genes, create a new object with a lower cutoff.}

\item{min.features}{Include cells where at least this many genes are detected.}
}
\value{
Seurat object serves as a container that contains both data (like the count matrix) and analysis (like PCA, or clustering results) for a single-cell dataset.
}
\description{
A wrapper function to make.seurat
}
\details{
Initializes the Seurat object and some optional filtering
}
