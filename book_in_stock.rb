class BookInStock

  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

=begin
  def price=(new_price)
    @price = new_price
  end
=end
=begin 改用attr_* 取代
  def isbn
    @isbn
  end

  def price
    @price
  end
=end


end


book = BookInStock.new("isbn1", 33.80)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75
puts "New price = #{book.price}"

=begin
book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"


b1 = BookInStock.new("temp1",3)
b2 = BookInStock.new("temp2",3.14)
b3 = BookInStock.new("temp4",3.15)

p b1
puts b1
p b2
puts b2
p b3
puts b3
=end