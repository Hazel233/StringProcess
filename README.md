
# Useful-R-Packages

My first R Package repository on GitHub starting from STAT545B.

### E1.1 The explaination of the development

`library(devtools)` is used to prepare for the tools. Then,
`create_package("~/Desktop/funfurther")` and `use_git()` are introduced
for create folder in user’s desktop and prepare for git operation
seperately. `use_r("strsplit")` can save the function in a `.R` file.
Finally use `load_all()` to make the function available for
experimentation. To be sure that all the moving parts of the foofactors
package still work, apply `check()` to do this. And use
`use_mit_license("Hazel Hao")` to set license for one’s work.

### E1.2 Tests

`usethis` and `testthat` are used especially to test those new
functions.

### E1.3 Documentation of the R package

1.  `document()` is used to update my documentation. The only object is
    set to be exported for use.
2.  Other tasks have been done and can be found in corresponding files.
