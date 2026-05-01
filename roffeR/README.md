# roffeR

`roffeR` is a small personal R startup package.

It keeps the little things I want every session to have:

- a quieter `q()` that defaults to `save = "no"`
- a helper for checking library paths
- a `pak`-based helper for personal GitHub installs
- a default CRAN mirror on attach

## Install

From this repository:

```r
pak::local_install("roffeR")
```

Or from GitHub:

```r
pak::pkg_install("rolfmblindgren/roffeR/roffeR")
```

## Use

To load the helpers in your own sessions, add this to your home
`~/.Rprofile`:

```r
if (interactive() && requireNamespace("roffeR", quietly = TRUE)) {
  library(roffeR)
}
```

If you want to use the helpers directly:

```r
library(roffeR)
q()
my_github()
```

## Notes

The package is intentionally small. It is meant to be easy to keep in sync with
the way I actually work, not to become a general framework.

