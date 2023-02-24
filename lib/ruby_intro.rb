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
    m = arr.size - 1
    for i in 0..m
      j = i + 1
      while j <= m
        if arr[i] + arr[j] == n
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
  if ((s.match?(/^[01]+$/)) && !((s.end_with? "1") || (s.end_with? "11")))
    return true
  end
  return false
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError.new("ISBN cannot be blank") if isbn.empty?
    raise ArgumentError.new("Price must be greater than 0") if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    str = "$%0.2f" % [@price]
  end

end
