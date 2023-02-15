# redn

(Caution WIP - not yet tested)

An R package to read and write [EDN - Extensible Data Notation](https://github.com/edn-format/edn) format files.


# Installation

## Install System Dependencies before you install in R!

Please install the following dependencies prior to installing in R:

 - [brew](https://brew.sh/)
 - [jet](https://formulae.brew.sh/cask/jet)

## Install the R package

Once you have installed the System Dependencies (`brew` and `jet`):

```
library(remotes)
remotes::install_github("aaelony/redn")

```


# Building the package 

```
RScript -e "devtools::document(); devtools::build(); roxygen2::roxygenise();  devtools:build_manual(); "

```
