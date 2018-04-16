require 'pry'

def longest(a1, a2)
  b1 = a1.split('')
  b2 = a2.split('')
  array = b1 + b2
  other_array = []

  array.each do |letter|
    if !other_array.include?(letter)
      binding.pry
      other_array << letter
    end
  end
  return other_array.sort.join
end

puts longest("aretheyhere", "yestheyarehere") == "aehrsty"
