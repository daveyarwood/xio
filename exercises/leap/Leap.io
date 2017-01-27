Number isDivisibleBy := method(n, self % n == 0)
Number isNotDivisibleBy := method(n, self isDivisibleBy(n) not)

Leap := Object clone do(
  isLeapYear := method(year,
    year isDivisibleBy(400) or
    (year isDivisibleBy(4) and (year isNotDivisibleBy(100)))
  )
)
