test_that("call minion", {
  expect_equal(minion("")$status, 1)
  expect_equal(minion("")$stderr, "")
  expect_equal(minion("")$timeout, FALSE)
})
