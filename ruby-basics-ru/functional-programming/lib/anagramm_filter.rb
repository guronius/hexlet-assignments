# frozen_string_literal: true

# BEGIN
def anagramm_filter(target_word, words)
  is_anagram = lambda do |first_word, second_word|
    return false if first_word.size != second_word.size

    first_word.each_byte.reduce(:+) == second_word.each_byte.reduce(:+)
  end

  words.filter { |word| is_anagram.call(target_word, word) }
end
# END
