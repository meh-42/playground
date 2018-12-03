# receives a number as input and returns true if that number is prime and returns false otherwise
def is_prime?(number)
  # puts "Checking if #{number} is a prime number"

  (number / 2).times do |index|
    x = index + 1
    # puts "Checking if #{number} is divisible by #{x}"
    # se number è divisibile per x e x è diverso da 1 e da number allora number non è primo
    if (number % x) == 0 && x != 1
      return false
    end
  end

  true
end

def test_primality(number)
  result = is_prime?(number)
  if result == true
    puts number
  else
    # puts "#{number} is NOT a prime number"
  end
end

1_000.times do |number|
  test_primality(number)
end
