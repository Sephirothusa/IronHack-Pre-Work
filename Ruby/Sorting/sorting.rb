def order(arr)

order_arr = arr.sort { |a,b| a.upcase <=> b.upcase}
return order_arr
end

puts "Type a sentence"
frase = gets.chomp
array_frase = frase.split(/\W+/)
puts "Regular sentence"
puts array_frase
puts "Organized sentence"
puts order(array_frase)