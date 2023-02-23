# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  for value in arr do
    total += value
  end
  total
end

def max_2_sum arr
  total = 0
  if arr.size == 0
    return total
  elsif arr.size == 1
    return arr[0]
  else
    x, y = arr.max(2)
    total = x + y
    return total
  end
end

def sum_to_n? arr, n
  if arr.size < 2
    return false
  else
    m = arr.size
    for i in 0..m do
      j = i + 1
      until j == m
        a, b = arr[i], arr[j]
        if a.+(b) == n
          return true
        end
        j += 1
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  str = 'Hello, '
  str.concat(name)
  return str.to_s
end

def starts_with_consonant? s
  if s.index(/[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/) == 0
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s.match?(/^[01]+$/) && s.end_with? "100"
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
end
