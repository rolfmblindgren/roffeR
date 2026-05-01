.onAttach <- function(libname, pkgname) {
  repos <- getOption("repos")
  repos["CRAN"] <- "https://cloud.r-project.org"
  options(repos = repos)
}

# Local Variables:
# mode: R
# End:

