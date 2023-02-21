# redn

`(Caution WIP - there be bugs... do not use yet)`

An R package to read and write [EDN - Extensible Data Notation](https://github.com/edn-format/edn) format files.

## Usage

Suppose you have an EDN file named "test.edn" as below:

```clojure

{:a 1
 :b "foo"
 :c [1 2 3 4]
 :d {:e 0}
 }

```


```r

some.edn  <- paste(readLines("test.edn"), collapse=" ")
## [1] "{:a 1 :b \"foo\" :c [1 2 3 4] :d {:e 0} }"

some.edn.converted.to.r <- fromEDN(some.edn)

toEDN(some.edn.converted.to.r)
## [1] "{\"a\" 1, \"b\" \"foo\", "\c\" [1 2 3 4], \"d\" {\"e\" 0}}"

```

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
RScript -e "devtools::document(); devtools::build(); roxygen2::roxygenise();  devtools::build_manual(); "

```
