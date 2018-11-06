dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	count = {}
	view = {}
	dictionary.each do |word|
		count[word] = 0
	end

	string.downcase().split(" ").each do |word|
		word = word.split(/\W+/).join("").to_s
		new_word = ""
		word.split("").each do |char|
			new_word += char
			count[new_word] != nil ? (count[new_word] += 1; view[new_word] = (count[new_word])) : ""
		end
		new_word = ""
		word.reverse.split("").slice(0, word.length-1).each do |char|
			new_word += char
			count[new_word.reverse] == nil ? "" : (count[new_word.reverse] += 1; view[new_word.reverse] = (count[new_word.reverse]))
		end

		word.split("").slice(1, word.length-2).each do |char|
			count[char] != nil ? (count[char] += 1; view[char] = (count[char])) : ""
		end
	end
	puts view
end

substrings("Howdy partner, sit down! How's it going?", dictionary)