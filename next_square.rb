def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  square_root = Math.sqrt(sq)
  if square_root % 1 == 0
    (square_root + 1) * (square_root + 1)
  else
    -1
  end
end
