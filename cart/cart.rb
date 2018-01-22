require './products.rb'

class Cart

  @@contents = []

  def add_to_cart(product)
    @@contents << product
  end

  def remove_from_cart(product)
    @@contents -= product
  end

  def total_before_taxes
    total = 0
    @@contents.each do |product|
      total +=  product.price
    end
    puts "$#{total}"
  end

  def total
    total = 0
    @@contents.each do |product|
      total +=  product.price * product.taxes
    end
    puts "$#{total}"
  end

  def display
    @@contents.each do |product|
      puts "#{product.name}: #{product.price}."
    end
  end
end

my_cart = Cart.new

apple = Product.new("Apple", 1.00, 0.05)
phone = Product.new("iPhone", 999.99, 0.13)
pc = Product.new("Macbook", 1599.99, 0.13)

my_cart.add_to_cart apple
my_cart.display
my_cart.add_to_cart phone
my_cart.display
my_cart.add_to_cart pc
my_cart.display
my_cart.remove_from_cart apple
my_cart.display
