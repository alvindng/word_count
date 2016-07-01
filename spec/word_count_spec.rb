require('rspec')
require('word_count')

describe('String#word_count') do
  it ('return how frequently a word appears in a given string') do
    expect('peck'.word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(2))
  end
end
