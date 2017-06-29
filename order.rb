class Order
  attr_accessor :content
  def initialize
    # default value of content is an empty Array.
    @content = []
  end
  # add a pizza to the order
  def add(pizza)
    @content << pizza
  end

  def value
    @content.reduce(0){|sum,pizza| sum + pizza.price }
  end

  def print
    puts 'Your order is:'
    puts "-----------------"
    @content.each do |pizza|
      puts "#{pizza.name} - #{pizza.price}"
    end
    puts "--------------"
  end
end
#The Array.reduce method is used to get a single value out of the pizzas in the order.
