require_relative 'word'

test_word = 'Dad'

result = Word.palindrome?(test_word) ? "is a" : "is not a"

puts "the word #{test_word} #{result} palindrome"