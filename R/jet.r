
#' Function to convert an object to [EDN - Extensible Data Notation](https://github.com/edn-format/edn) format.
#' @param r_obj A R object to represent as EDN.
#' @return Returns EDN string.
#' @export
toEDN <- function(r_obj) {
    check_deps()
    json    <- rjson::toJSON(r_obj)
    jet.cmd <- "jet --from json --to edn"
    edn     <- system(jet.cmd, input = json, intern=TRUE)
    edn
}

#' Function to convert an object from [EDN - Extensible Data Notation](https://github.com/edn-format/edn) format to R
#' @param edn_string A character string in EDN format
#' @return Returns an R object
#' @export 
fromEDN <- function(edn_string) {
    check_deps()
    escaped_edn_string <- gsub("([.|()\\^{}+$*?]|\\[|\\])", "\\\\\\1", edn_string)
    jet.cmd            <- "jet --from edn --to json"
    json               <- system(jet.cmd, input = escaped_edn_string, intern=TRUE)
    r_obj              <- rjson::fromJSON(json)
    r_obj
}

check_deps <- function() {
    status <- system("which jet")
    if (status == 1) {
        msg <- "Please install `jet` (see https://formulae.brew.sh/cask/jet) before continuing!"
        logger::log_error(msg)
        stop(msg)
    }
    
}
