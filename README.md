
<!-- README.md is generated from README.Rmd. Please edit that file -->

# StringProcess

<!-- badges: start -->

<!-- badges: end -->

The goal of this package is to develop some functions to process
strings.

## Installation

You can install the released version of StringProcess with

``` r
# install.packages("devtools")
devtools::install_github("Hazel233/StringProcess")
```

## Function lists

You can find the following functions in this package:

`strsplit`: Keep the delimiter after, before or between a given split.

`delete_na`: Remove missing value of a string.

`cutcertainstr`: Reduce and cut a given string into parts with a fixed
length.

**Warning**: `cutcertainstr` relies on `strsplit` and `delete_na`. Don’t
download it separately.

## Assignment5 - STAT545B - New update for version 0.1.1

In this version 0.1.1, two new functions for string processing are added
to realize more functions. If you want to know more about what changes
has been made here, please refer to `version 0.1.0` tag.

## Assignment2 - STAT545B - Old update for version 0.1.0

My first R Package repository on GitHub starting from STAT545B. The
following parts are some explanation for this assignment\!

#### E1.1 The explaination of the development

`library(devtools)` is used to prepare for the tools. Then,
`create_package("~/Desktop/funfurther")` and `use_git()` are introduced
for create folder in user’s desktop and prepare for git operation
seperately. `use_r("strsplit")` can save the function in a `.R` file.
Finally use `load_all()` to make the function available for
experimentation. To be sure that all the moving parts of the foofactors
package still work, apply `check()` to do this. And use
`use_mit_license("Hazel Hao")` to set license for one’s work.

#### E1.2 Tests

`usethis` and `testthat` are used especially to test those new
functions.

#### E1.3 Documentation of the R package

1.  `document()` is used to update my documentation. The only object is
    set to be exported for use.
2.  Other tasks have been done and can be found in corresponding files.
