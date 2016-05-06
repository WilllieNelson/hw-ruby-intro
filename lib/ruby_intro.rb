# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each {|i| total += i }
  total
end

def max_2_sum arr
  #arr.sort.last(2).reduce(&:+)
  sArray = arr.sort
  sArray[-1].to_i + sArray[-2].to_i
end

def sum_to_n? arr, n
  return false if arr.length <= 1
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if /[aeiouAEIOU*]/.match(s[0])
      return false
    elsif /0-9*/.match(s[0])
      return false
    elsif /[^a-zA-Z0-9.*]/.match(s)
      return false
    elsif /^$/.match(s)
      return false
    else
      return true
    end
end

def binary_multiple_of_4? s
  bin = /^[1|0]+/.match(s)
   if bin
	return bin.to_s.to_i(2) % 4 == 0
   else
	return false
   end
end

# Part 3

class BookInStock
attr_reader   :isbn
  attr_accessor :price

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def initialize(isbn, price)
    raise ArgumentError unless isbn.length > 0 && price > 0
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError.new if price <= 0
  end

  def price_as_string
    return sprintf("$%2.2f", price)
  end
end
