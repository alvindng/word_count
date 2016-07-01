require('pry')

class String
  define_method(:word_count) do |string|
    user_word = self.downcase()
    string_array = string.downcase().split().sort()
    count = 0
    string_array.each() do |match|
      if match == user_word
        count += 1
      end
    end
    return count
  end
end
