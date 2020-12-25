=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming

  def self.compute(a, b)
    if a.size == b.size
      count = 0
      if a.size > 0
        a.scan(/\w/).each_with_index do |x, index|
          unless x == b.scan(/\w/)[index]
            count = count + 1
          end
        end
      end
      count
    else
      raise ArgumentError.new
    end
  end

end
