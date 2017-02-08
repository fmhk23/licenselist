context("DataFrame size")

test_that("Number of DataFrame rows is same as of packages.",{
  expect_equal(class(get_license_info()),class(data.frame()))
  expect_equal(nrow(get_license_info()), length(list.files(.libPaths())))
})
