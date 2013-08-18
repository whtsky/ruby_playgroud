num = rand(10)
correct = false

until correct
  print "Input a number:"
  i = gets.to_i
  puts "Should be bigger" if i < num
  puts "Should be smaller" if i > num
  if i == num
    correct = true
    puts "Correct"
  end
end