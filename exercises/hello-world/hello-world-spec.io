describe(testCase, HelloWorld,
  setup(
    hw := HelloWorld clone
  )

  testCase("no name",
    hw hello() verify(== "Hello, World!")
  )

  testCase("sample name",
    hw hello("Alice") verify(== "Hello, Alice!")
  )

  testCase("other sample name",
    hw hello("Bob") verify(== "Hello, Bob!")
  )
)
