=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    words
    words_count = Hash.new(0)
    words.each do |x|
      words_count[x] += 1
    end
    words_count
  end

  def words
    @string.downcase.scan(/\w+'t|\w+/)
  end
end