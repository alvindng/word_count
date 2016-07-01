require('pry')

class String
  define_method(:word_count) do |sentence|
    user_word = self.downcase()
    sentence_array = sentence.downcase().split().sort()
    count = 0
    sentence_array.each() do |match|
      if match == user_word
        count += 1
      end
    end
    return count
  end
end
