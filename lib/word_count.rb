require('pry')

class String

  define_method(:word_count) do |string|
    user_word = self
    string_array = string.split(" ").sort()
    counts = Hash.new(0)
    string_array.each { |word| counts[user_word] +=1}
  end
