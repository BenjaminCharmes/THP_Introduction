# 02_calculator.rb

# Add
def add(number1, number2)
 return number1 + number2
end

# Subtract
def subtract(number1, number2)
  return number1 - number2
end

# Sum
def sum(numbers)
  return numbers.sum
end

# Multiply
def multiply(number1, number2)
  return number1 * number2
end

# Power
def power(number1, number2)
  return number1 ** number2
end

# Factorial 
def factorial(number)
  return (1..number).inject(:*) || 1
end