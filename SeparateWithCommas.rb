def separate_with_comma(n)
  	number_array = n.to_s.split('')
	num_length = number_array.length
	if num_length % 3 != 0
		num_commas = num_length / 3
	else
		num_commas = (num_length / 3) - 1
	end
	
	place = num_length
	
	until num_commas == 0 do
		place -= 3
		number_array.insert(place, ",")
		num_commas -= 1
	  end
puts number_array.join('')

end

separate_with_comma(1000)
separate_with_comma(1000000)
separate_with_comma(123423508098340534)