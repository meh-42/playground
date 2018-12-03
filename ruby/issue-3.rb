def is_odd?(number)
    if (number % 2) == 0
      false
    else
      true
    end
end

  n = 5
  result = is_odd?(n)
  puts "#{n} is_odd?: #{result}"

  n = 4
  result = is_odd?(n)
  puts "#{n} is_odd?: #{result}"
