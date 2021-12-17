
expect_message(
  whensxmas()
  )

expect_message(
  whensxmas("2021-01-01")
  )

expect_message(
  whensxmas("2021-12-25")
  )

expect_message(
  whensxmas("2022-12-31")
  )

expect_error(
  whensxmas("Not a date")
  )
