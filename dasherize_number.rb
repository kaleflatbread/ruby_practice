# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  #convert the number into an array of integers
  #create a variable called answer thats just an empty string
  #iterate through the number array with an index
  #hand the first string specially (no "-" before if odd)
  #if the number is odd
    #convert the number to a string with "-" before and after, and add it to answer
  #else the number is even
    #conver the number to string and add it to answer


  num = num.to_s.split('').map do
    |char| char.to_i
  end

  answer = []

  idx = 0
  if num[idx] % 2 == 1
    dig = num[idx].to_s + "-"
    answer.push(dig)
  else
    dig = num[idx].to_s
    answer.push(dig)
  end

  idx = 1
  prev_dig = num[idx - 1]
  while idx < num.length
    if num[idx] % 2 == 0
      dig = num[idx].to_s
    else num[idx] % 2 == 1
      if prev_dig % 2 == 1
        if idx == num.length - 1
          dig = num[idx].to_s
        else idx != num.length - 1
          dig = num[idx].to_s + "-"
        end
      else prev_dig % 2 == 0
        if idx == num.length - 1
          dig = "-" + num[idx].to_s
        else idx != num.length - 1
          dig = "-" + num[idx].to_s + "-"
        end
      end
    end

    answer.push(dig)
    idx += 1
    prev_dig = num[idx - 1]
  end
  return answer.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #dasherize_number")
puts("===============================================")
    puts(
      'dasherize_number(203) == "20-3": ' +
      (dasherize_number(203) == '20-3').to_s
    )
    puts(
      'dasherize_number(303) == "3-0-3": ' +
      (dasherize_number(303) == '3-0-3').to_s
    )
    puts(
      'dasherize_number(333) == "3-3-3": ' +
      (dasherize_number(333) == '3-3-3').to_s
    )
    puts(
      'dasherize_number(3223) == "3-22-3": ' +
      (dasherize_number(3223) == '3-22-3').to_s
    )
    puts(
      'dasherize_number(32323) == "3-2-3-2-3": ' +
      (dasherize_number(32323) == '3-2-3-2-3').to_s
    )
      puts(
      'dasherize_number(32333) == "3-2-3-3-3": ' +
      (dasherize_number(32333) == '3-2-3-3-3').to_s
    )
puts("===============================================")
