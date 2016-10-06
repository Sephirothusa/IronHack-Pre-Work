puts "This is the FizzBuzz exercise"

number = 0

while number <= 100

	array_number = number.to_s

	if array_number[0] == "1"
		print "Bang"
		if number % 3 != 0
			print "\n"
		end
	end

	if number % 3 == 0
		print "Fizz"
		if number % 5 == 0
			print "Buzz"
		end
	end

print "\n"

elsif number % 5 == 0
	puts "Buzz"
end


if number % 3 != 0 && number % 5 != 0 && array_number[0] != "1"
	puts number
end

number += 1

end