#First Interaction

def solve_cipher(texto)
	puts texto
	arr_text = texto.chars.map {|item| item.ord}
	trad = arr_text.map { |item| item - 1}
	puts trad.map { |item| item.chr }.join
end

solve_cipher('ifmmp')

# .chars.map
# .ord
# .chr