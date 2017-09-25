dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (word, dictionary)
dictionary_match = {}
phrase_split = word.split(' ')
phrase_split.each { |word_from_phrase|  

		dictionary.each {|match|
			if word_from_phrase.downcase.include?(match)
				if 	dictionary_match.has_key?(match)
					dictionary_match[match] +=1
				else
					dictionary_match.store(match, 1)
				end

			end
		}


}

puts dictionary_match
end

substrings("howdy partner, sit down! How's it going?", dictionary)