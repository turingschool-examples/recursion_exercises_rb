def countdown(n)
  return [0] if n <= 0

  countdown(n - 1).unshift(n)
end

def get_sum(array)
  return array[0] if array.length <= 1

  array[0] + get_sum(array[1..-1])
end

def factorial(n)
  return 1 if n <= 1

  factorial(n - 1) * n
end

def reverse(string)
  return string if string.empty?

  reverse(string[1..-1]) + string[0]
end

def power(base, exponent)
  return 1 if exponent == 0

  power(base, exponent - 1) * base
end

def is_palindrome?(string)
  return true if string.length <= 1

  matching_edges = string[0] == string[-1]

  is_palindrome?(string[1..-2]) && matching_edges
end

def upcase(string)
  return string.upcase if string.length <= 1

  string[0].upcase + upcase(string[1..-1])
end

def sum_of_digits(n)
  return nil if n < 0
  return n if n <= 1

  sum_of_digits(n - 1) + n
end

def in_stock?(array, target)
  return false if array.empty?
  return true if array[0] == target

  in_stock?(array[1..-1], target)
end

def find_max(array)
  return array[0] if array.length <= 1

  max = find_max(array[1..-1])

  max > array[0] ? max : array[0]
end

def number_of_zeroes(array)
  return 0 if array.length == 0

  count = array[0] == 0 ? 1 : 0

  number_of_zeroes(array[1..-1]) + count
end

def just_positives(array)
  return 0 if array.length == 0

  num = array[0] > 0 ? array[0] : 0

  just_positives(array[1..-1]) + num
end

def number_of_occurrences(array, target)
  return 0 if array.length == 0

  count = array[0] == target ? 1 : 0

  number_of_occurrences(array[1..-1], target) + count
end

def fibonacci(n)
  return n if n <= 1

  fibonacci(n - 2) + fibonacci(n - 1)
end
