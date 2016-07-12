require('rspec')
require('word_count')

describe('String#word_count') do
  it ('return a single word') do
    expect('peck'.word_count("peck")).to(eq(1))
  end

  it ('returns 0 if no word matches are found') do
    expect('peck'.word_count("dog")).to(eq(0))
  end

  it ('return how frequently a word appears in a given string') do
    expect('peck'.word_count("if peter piper picked a peck of pickled peppers wheres the peck of pickled peppers peter piper picked")).to(eq(2))
  end

  it ('return how frequently a word appears in a given string regardless of formatting and punctuation') do
    expect('peck'.word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq(2))
  end
end
