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

## shiny-server
```shell=
apt-get install gdebi-core
wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.3.838-amd64.deb
gdebi shiny-server-1.5.3.838-amd64.deb
service status shiny-server

## 修改設定擋
vim /etc/shiny-server/shiny-server.conf
## 預設置放目錄
cd /srv/shiny-server/
```


## rstudio-server
```R=
```
