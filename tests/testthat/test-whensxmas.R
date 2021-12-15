test_that("when's Christmas", {

  expect_message(
    whensxmas()
    )

  expect_message(
    whensxmas(date = "2021-01-01")
  )

  expect_message(
    whensxmas(date = "2021-12-25")
  )

})
