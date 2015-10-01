require "pry"

words = File.read('words.txt').split("\n")


# word_hash = words.map! do |word|
#   {word => word.chars.sort.join.eql?}
#   end

sorted = []

def check_anagram_array list
    list.permutation(2).each do |word_to_check, other_word|
      next if word_to_check == other_word
      next unless word_to_check.last == other_word.first
      sorted.push word_to_check, other_word
      # cosmicify word_to_check, other_word
    end
  end

check_anagrams = words.group_by { |element| element.chars.sort }.values

anagrams = []
check_anagrams.each do |word|
  if word.length > 1
    anagrams.push word
  end
end

anagrams.each do |list|
  check_anagram_array list
end

binding.pry



#624 total anagrams
