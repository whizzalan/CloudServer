# Ubuntu 16.04

## OS packages

```shell=
apt-get install libssl-dev libxml2-dev libcurl4-openssl-dev
# update R 
add-apt-repository ppa:marutter/rrutter
apt update
apt full-upgrade
```

## R packages

```R=
pkg_list <- c("magrittr", "dplyr", "tidyr", "data.table", "ggplot2",
              "readr", "lubridate", "extrafont", "ggrepel", "tidyverse" ,
              "rmarkdown", "shiny", "knitr", "prettydoc",
              "nycflights13", "RJSONIO")
pkg_new <- pkg_list[!(pkg_list %in% installed.packages()[,"Package"])]
if(length(pkg_new)) install.packages(pkg_new)
rm(pkg_new, pkg_list)
```
