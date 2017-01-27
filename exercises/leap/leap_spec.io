leap := Leap clone

describe("Leap",
  it("should conclude a year not divisible by 4 is not a leap year",
    expect(leap isLeapYear(2015)) toBe(false)
  ),

  it("should conclude a year divisible by 4 and not 100 is a leap year",
    expect(leap isLeapYear(2016)) toBe(true)
  ),

  it("should conclude a year divisible by 100 and not 400 is not a leap year",
    expect(leap isLeapYear(2100)) toBe(false)
  ),

  it("should conclude a year divisible by 400 is a leap year",
    expect(leap isLeapYear(2000)) toBe(true)
  )
)
