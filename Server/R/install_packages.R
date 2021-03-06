#!/usr/bin/env Rscript
packages_w1 <- packages_w2 <- packages_w3 <- packages_w4 <- package_SL <- ""
packages_w1 <- c("devtools", "httr", "rvest", "stringr", "selectr", "quantmod", "rjson", "jsonlite", "rlist", "magrittr", "pipeR")
package_SL <- c("RSQLite", "dplyr", "RPostgreSQL", "data.table",
                "plotly","shiny")
# packages_w2 <- c("rJava", "dplyr", "data.table", "ROracle", "RODBC", "RJDBC", "RMySQL", "RSQLite", "XLConnect", "gdata", "xlsx", "readxl")
# packages_w3 <- c("rebenchmark","ggplot2", "shiny", "rmarkdown", "circlize", "dygraphs", "plotly")
# packages_w4 <- c("Lahman", "e1071", "jiebaR", "xgboost", "irlba", "LiblineaR", "SparseM", "xgboost", "tm", "tmcn", "wordcloud", "koRpus", "Rweibo", "openNLP", "twitteR", "openNLPdata", "ROAuth", "corpora", "languageR", "zipfR")
packages <- c(packages_w1, packages_w2, packages_w3, packages_w4, package_SL)

if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())),repos="http://cran.r-project.org", lib=.libPaths()[1] ) #lib = "/usr/local/lib/R/site-library")
}

library(devtools)
# github_Packages <- c("ramnathv/slidifyLibraries", "ramnathv/slidify", "rstudio/shinyapps", "renkun-ken/formattable")
# github_PackagesName <- sapply(strsplit(github_Packages,"/"),function(x)x[2])
#
# if (length(setdiff(github_PackagesName, rownames(installed.packages()))) > 0) {
#   index <- match(x = setdiff(github_PackagesName, rownames(installed.packages())), table = github_PackagesName)
#   install_github(github_Packages[index])
# }
