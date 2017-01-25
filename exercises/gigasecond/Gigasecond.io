Gigasecond := Object clone do(
  gigasecond := Duration clone fromNumber(1000000000)
  from := method(datetime, datetime + gigasecond)
)
