def substrings arg,dictionary
	arg = arg.downcase
	op_hash = Hash.new(0)
	dictionary.each do |variable|
		if arg.include?(variable)
			op_hash[variable] += 1  
		end
	end
	puts op_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("partner", dictionary)


def mul_words_substrings arg, dictionary
	arg = arg.downcase.split(" ")
	op_hash = Hash.new(0)
	a = 0
	dictionary.each do |var|
		arg.each do |var1|
			if var1.include?(var)
				op_hash[var] += 1
			end
		end
	end
puts op_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
mul_words_substrings("Howdy partner, sit down! How's it going?", dictionary)
["howdy", "partner,", "sit", "down!", "how's", "it", "going?"] 
