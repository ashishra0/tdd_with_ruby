class Word

  def self.palindrome? test_word # Madam
    test_word = test_word.downcase # madam
    word_length = test_word.length # 5
    mid = word_length / 2 # 2
    mid_length = word_length.even? ? mid : mid + 1 # 3
    first_half = test_word.slice(0, mid_length) # mad
    second_half = ""

    if word_length.even?
      second_half = test_word.slice(mid_length, mid_length).reverse
    else
      second_half = test_word.slice(mid_length - 1, mid_length).reverse
    end
    first_half == second_half
  end
end

Word.palindrome?('madam')