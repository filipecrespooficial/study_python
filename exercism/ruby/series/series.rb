=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(text)
    @text = text
  end

  def slices(limit)
    groups = []
    if @text.size >= limit
      final = @text.size - limit
      for i in 0..final do
        groups << @text[i, limit]
      end
      groups
    else
      raise ArgumentError
    end
  end
end