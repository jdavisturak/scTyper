# scTyper: a comprehensive pipeline for the cell typing analysis of single-cell RNA-seq data


# 1. Overview
&nbsp;&nbsp;&nbsp;&nbsp;Advancements in single-cell RNA sequencing (scRNA-Seq) technology has enabled us identifying individual cell types from a complex cell population in tissues. Cell typing is one of the key challenges in scRNA-Seq data analysis, which is usually performed by estimating cell marker gene expression. However, there is no standard practice for cell typing analysis and using different cell makers and cell typing algorithms results in variable and inaccurate results. scTyper is a comprehensive pipeline for the cell typing and scRNA-Seq data analysis. It has been equipped with a database of cell type markers i.e., scTyper.db, containing 213 cell markers, collected from previous studies. Of note, markers for malignant cells, cancer-associated fibroblasts, and tumor-infiltrating T cells were collected in this database, which will be helpful in analyzing data from cancer tissues. In addition, scTyper provides three customized methods for estimating cell type marker expression, including the nearest template prediction (NTP), gene set enrichment analysis (GSEA), and average expression values. DNA copy number inference method (inferCNV), with improved modification, was also implemented in scTyper, which can be used for the typing of malignant cells. The package also supports the data preprocessing pipelines of Cell Ranger from 10X Genomics. Reporting system for analysis summary is also implemented which may facilitate users to perform reproducible analyses.  

# 2. Workflow

![](https://user-images.githubusercontent.com/36435306/84363831-3cec7000-ac0a-11ea-802d-41de1b953835.png)
</br>
&nbsp;&nbsp;&nbsp;&nbsp;scTyper is comprised of the modularized processes of ‘QC’, ‘Cell Ranger’, ‘Seurat processing’, ‘cell typing’, and ‘malignant cell typing’. These processes can be customized by manipulating the parameters for each process. If users want to perform only the cell typing process and a preprocessed input file with Seurat object is already prepared, the processing steps of ‘QC’, ‘Cell Ranger’ and ‘Seurat processing’ can be skipped by setting the parameters ‘qc’, ‘run.cellranger’ and ‘norm.seurat’ to ‘FALSE’. The processes and their parameters implemented in scTyper are summarized.

# 3. Getting Started 

## 3.1 Installation and loading
Source codes for scTyper are available at : https://github.com/omicsCore/scTyper

### 3.1.1 Required software
scTyper runs in the R statistical computing environment. R version 3.5 or higher is required.

```r
# install BiocManager if necessary
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

# install devtools if necessary
BiocManager::install("devtools")
library(devtools)

# install the scTyper package
devtools::install_github("omicsCore/scTyper")
```

### 3.1.2 Loading package and documentation


```r
# load
library("scTyper") 
library(help="scTyper")
```

# 4. More information

- Detailed installation instruction (Fastqc, cellranger)
- Sample analysis 
- Documentation (function reference)

