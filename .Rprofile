if (interactive()) {
  if (!requireNamespace("roffeR", quietly = TRUE)) {
    if (identical(Sys.info()[["effective_user"]], "root")) {
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

      try(getNamespace("pak")$pkg_install("github::rolfmblindgren/roffeR/roffeR", ask = FALSE), silent = TRUE)
    }
  }

  if (requireNamespace("roffeR", quietly = TRUE)) {
    library(roffeR)
  }
}

# Local Variables:
# mode: R
# End:
