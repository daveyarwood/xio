gigasecond := Gigasecond clone

// test helpers
abbreviatedIsoDate := method(str, Date clone fromString(str, "%Y-%m-%d"))
isoDate := method(str, Date clone fromString(str, "%Y-%m-%dT%H:%M:%S"))

describe("Gigasecond",
  it("should correctly calculate one gigasecond from 2011-04-25",
    expect(
      gigasecond from(abbreviatedIsoDate("2011-04-25"))
    ) toBe(
      isoDate("2043-01-01T01:46:40")
    )
  ),

  it("should correctly calculate one gigasecond from 1977-06-13",
    expect(
      gigasecond from(abbreviatedIsoDate("1977-06-13"))
    ) toBe(
      isoDate("2009-02-19T01:46:40")
    )
  ),

  it("should correctly calculate one gigasecond from 1959-07-19",
    expect(
      gigasecond from(abbreviatedIsoDate("1959-07-19"))
    ) toBe(
      isoDate("1991-03-27T01:46:40")
    )
  ),

  it("should correctly calculate one gigasecond from 2015-01-24T22:00:00",
    expect(
      gigasecond from(isoDate("2015-01-24T22:00:00"))
    ) toBe(
      isoDate("2046-10-02T23:46:40")
    )
  ),

  it("should correctly calculate one gigasecond from 2015-01-24T23:59:59",
    expect(
      gigasecond from(isoDate("2015-01-24T23:59:59"))
    ) toBe(
      isoDate("2046-10-03T01:46:39")
    )
  )
)
