use_cran_mirror <- function() {
  repos <- getOption("repos")
  repos["CRAN"] <- "https://cloud.r-project.org"
  options(repos = repos)
  invisible(repos)
}

type <- function(s) {
  libs <- .libPaths()
  hits <- libs[vapply(libs, function(lib) {
    dir.exists(file.path(lib, s))
  }, logical(1))]

  if (length(hits) == 0L) FALSE else hits
}

q <- function(save = "no", status = 0, runLast = TRUE) {
  base::q(save = save, status = status, runLast = runLast)
}

my_github <- function(pkgs = c(
  "rolfmblindgren/talection/talection",
  "rolfmblindgren/neopiR",
  "rolfmblindgren/shinyseo",
  "rolfmblindgren/grendelshiny"
), ask = FALSE) {
  if (!requireNamespace("pak", quietly = TRUE)) {
    utils::install.packages(
      "pak",
      repos = sprintf(
        "https://r-lib.github.io/p/pak/stable/%s/%s/%s",
        .Platform$pkgType,
        R.Version()$os,
        R.Version()$arch
      )
    )
  }

  pat <- Sys.getenv("GITHUB_PAT", unset = "")
  if (!nzchar(pat)) {
    message("GITHUB_PAT is not set; skipping GitHub installs.")
    return(invisible(FALSE))
  }

  old_pat <- Sys.getenv("GITHUB_PAT", unset = NA_character_)
  on.exit({
    if (is.na(old_pat)) {
      Sys.unsetenv("GITHUB_PAT")
    } else {
      Sys.setenv(GITHUB_PAT = old_pat)
    }
  }, add = TRUE)
  Sys.setenv(GITHUB_PAT = pat)

  pkgs <- ifelse(
    grepl("^github::", pkgs),
    pkgs,
    paste0("github::", pkgs)
  )

  pkg_install <- getNamespace("pak")$pkg_install
  pkg_install(pkgs, ask = ask)
}

# Local Variables:
# mode: R
# End:

