require "pry"

words = File.read('words.txt').split("\n")


words.map! do |word|
  {word => word.chars.sort}
  end
