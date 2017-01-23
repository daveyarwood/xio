greeter := HelloWorld clone

describe("HelloWorld",
  it("should greet the world when no name is provided",
    expect(greeter hello()) toBe("Hello, World!")
  ),

  it("should greet Alice",
    expect(greeter hello("Alice")) toBe("Hello, Alice!")
  ),

  it("should greet Bob",
    expect(greeter hello("Bob")) toBe("Hello, Bob!")
  )
)
