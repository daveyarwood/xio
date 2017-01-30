Hamming := Object clone do(
  distance := method(a, b,
    if(a size != b size,
      Exception raise("Strands must be the same length.")
    )

    diff := 0

    for(i, 0, a size,
      if(a at(i) != b at(i), diff = diff + 1)
    )

    diff
  )
)
