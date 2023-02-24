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
  # If the array contains fewer than 2 elements return false
  if arr.size < 2
    return false
  else
    # Initialize a variable to hold the maximum possible index of the array
    m = arr.size - 1
    # Outer loop iterates through all elements in the array
    for i in 0..m
      j = i + 1
      # Inner loop iterates through all elements of the array greater than the index the outer loop is on
      while j <= m
        # If the sum of any 2 individual elements of the array is equal to n, return true
        if arr[i] + arr[j] == n
          return true
        end
        # Increment the inner loop index variable
        j += 1
      end
    end
    # Return false by default, if the true condition was already reached
    # the function will have already returned a value before it reaches this point
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
  # Index method returns the first index at which a consonant is found. Condition is only true if that value is 0,
  # meaning a consonant appears at the very beginning of the string
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

  # Attribute accessor, enables the getter and setter methods for the attributes isbn and price
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    # Raises an argument error if isbn is an empty string
    raise ArgumentError.new("ISBN cannot be blank") if isbn.empty?
    # Raises an argument error if the value of price <=0
    raise ArgumentError.new("Price must be greater than 0") if price <= 0
    # Defines attributes for objects of the class BookInStock and assigns their values to the given parameter values
    @isbn = isbn
    @price = price
  end

  # Method outputs the price attribute as a nicely formatted string starting with a $ and with 2 decimal places
  def price_as_string
    str = "$%0.2f" % [@price]
  end

end
