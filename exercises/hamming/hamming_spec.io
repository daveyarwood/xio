hamming := Hamming clone

describe("Hamming",
  it("should calculate the Hamming distance of identical strands",
    expect(hamming distance("A", "A")) toBe(0)
  ),

  it("should calculate the Hamming distance of long identical strands",
    expect(hamming distance("GGACTGA", "GGACTGA")) toBe(0)
  ),

  it("should calculate the Hamming distance of single-nucleotide strands",
    expect(hamming distance("A", "G")) toBe(1)
  ),

  it("should calculate the Hamming distance of small strands",
    expect(hamming distance("AG", "CT")) toBe(2)
  ),

  it("should calculate the Hamming distance of small strands",
    expect(hamming distance("AT", "CT")) toBe(1)
  ),

  it("should calculate the Hamming distance of strands",
    expect(hamming distance("GGACG", "GGTCG")) toBe(1)
  ),

  it("should calculate the Hamming distance of long strands",
    expect(hamming distance("ACCAGGG", "ACTATGG")) toBe(2)
  ),

  it("should calculate the Hamming distance of strands",
    expect(hamming distance("AGA", "AGG")) toBe(1)
  ),

  it("should calculate the Hamming distance of strands",
    expect(hamming distance("AGG", "AGA")) toBe(1)
  ),

  it("should calculate the Hamming distance of strands",
    expect(hamming distance("TAG", "GAT")) toBe(2)
  ),

  it("should calculate the Hamming distance of strands",
    expect(hamming distance("GATACA", "GCATAA")) toBe(4)
  ),

  it("should calculate the Hamming distance of strands",
    expect(hamming distance("GGACGGATTCTG", "AGGACGGATTCT")) toBe(9)
  ),

  it("should calculate the Hamming distance of empty strands",
    expect(hamming distance("", "")) toBe(0)
  ),

  it("should disallow the first strand being longer",
    expect(
      block(hamming distance("AATG", "AAA"))
    ) toThrowWithMessage(
      "Strands must be the same length."
    )
  ),

  it("should disallow the second strand being longer",
    expect(
      block(hamming distance("ATA", "AGTG"))
    ) toThrowWithMessage(
      "Strands must be the same length."
    )
  )
)
