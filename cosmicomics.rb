require "pry"

words = File.read('words.txt').split("\n")


# word_hash = words.map! do |word|
#   {word => word.chars.sort.join.eql?}
#   end

check_anagrams = words.group_by { |element| element.chars.sort }.values


anagrams = []
check_anagrams.each do |word|
  if word.length > 1
    anagrams.push word
  end
end



#624 total anagrams

puts counter
