def solve_cipher(texto, codec)

puts texto
arr_text =texto.chars.map { |item| (item !=" " ? item.ord : item)}
trad = arr_text.map do |item|
if item !=" " && item >=97  && item + codec < 97 || item !=" " && item >=65 && item <=90 && item + codec < 65
	item + 26 + codec
  	elsif item !=" " && item <=122 && item + codec > 122 || item !=" " && item <=90 && item >=65 && item + codec >90
  		item - 26 + codec
  	else 
  		(item !=" " ? item + codec Ci: item)
  	end
  end
  puts trad.map { |item| (item !=" " ? item.chr : item)  }.join
  
end
solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)