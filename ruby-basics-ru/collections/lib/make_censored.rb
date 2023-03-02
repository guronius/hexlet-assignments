# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(sentence, stop_words)
  censored_aggregate = "$#%!"
  result = []

  sentence.split.each do |word|
    result << word unless stop_words.include? word
    result << censored_aggregate if stop_words.include? word
  end

  result.join ' '
end

# rubocop:enable Style/For
