puts "What is the source file?"
source_file = gets.chomp

puts "What is the destination file?"
destination_file = gets.chomp

source_file_contents = IO.read(source_file)

IO.write("/Users/User/Documents/Web\ Development/Ruby/source2.txt", "hey Everyne I got it on my own Im soooo happy wow!!")