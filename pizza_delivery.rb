require_relative "menu.rb"
require_relative "order.rb"

done = false
order = Order.new
menu = Menu.new

puts "Hello, welcome to our pizza express delivery"

#this will run until done is to true
while not done
  puts "What can I do for you?"
  puts "1: Order a pizza"
  puts "2: Nothing"
  puts "3: Check out (€#{order.value})" if order.value > 0
  puts "----------------------"
#The if statement can also be used inline. In this case, everything before the if statement will only be done when it evaluates to true
#get some input from the customer
  choice = gets.chomp.to_i
  case choice
    when 1
      puts "Let me show you the menu"
      menu.print
      pizza = menu.make_choice
      order.add(pizza)

    when 2
      done = true
    when 3
      order.print
      puts "Do you wish to pay with"
      puts "1: ideal"
      puts "2: creditcard"
      payment = gets.chomp.to_i
      done = (payment == 1 || payment == 2)
    else
      puts "I don't understand"
  end

# say goodbye if the customer is leaving
  if done
    puts "Thanks you for your visit! hope to see you again soon."
    puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _ \"-._"
    puts "||    _ (_)    '-."
    puts "||   (_)   __..-'"
    puts " \\__..--\"\""
  end
end
