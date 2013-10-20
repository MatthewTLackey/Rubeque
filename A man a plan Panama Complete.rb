def longest_palindrome(word)
	# pick a portion of the string 
	word_array = word.split('')
	
	first_letter = 0
	longest = "something's wrong"
	
	palindrome_array = []
	
	#create section for comparison
	
	until first_letter == word_array.length - 2
		last_letter = first_letter + 1
		
		#starting at the first letter, progressively makes the string shorter	
		until last_letter == word_array.length
			test_word = word_array[first_letter..last_letter].join('')
			#puts test_word

			if test_word == test_word.reverse
				palindrome_array << test_word
				last_letter += 1
			else
				last_letter += 1
			end
		end
		#move the starting point to the next spot
		first_letter += 1
		#puts test_word
	end

	place_holder = 0
	
	palindrome_array.each do |x| 
		#puts x
		if x.length > place_holder
			longest = x
			place_holder = x.length
		end
	end

	return longest
end


puts longest_palindrome("xyyx")
puts longest_palindrome("zxyyx")
puts longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd")
puts longest_palindrome("bartarcarracecarbartar")
puts longest_palindrome("3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982")
