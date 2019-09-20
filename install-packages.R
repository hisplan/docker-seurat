#!/usr/bin/Rscript

# default repo
local({r <- getOption("repos")
    r["CRAN"] <- "https://cloud.r-project.org"
    options(repos=r)
})

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

source("https://bioconductor.org/biocLite.R")
biocLite()

source("https://bioconductor.org/biocLite.R")
biocLite(c("Seurat"))
