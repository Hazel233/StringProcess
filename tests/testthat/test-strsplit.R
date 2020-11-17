x <- c("3D/MON&SUN2D/MON&SUN")
test_that('Strsplit test!', {
  expect_error(strsplit(strsplit(x, "S", type = "WILLBEERROR")))
  expect_equal(strsplit(x, "/", type = "remove"), list(c("3D","MON&SUN2D","MON&SUN")))
  expect_equal(strsplit(x,""),list(c("3", "D", "/", "M", "O", "N", "&", "S", "U", "N","2", "D", "/", "M", "O", "N", "&", "S", "U", "N")))
})
