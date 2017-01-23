HelloWorld := Object clone do(
  hello := method(name,
    if (name isNil,
      hello("World"),
      "Hello, #{name}!" interpolate
    )
  )
)
