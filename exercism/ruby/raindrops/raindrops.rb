=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(num)
    ret = ""
    ret << "Pling" if (num%3).zero?
    ret << "Plang" if (num%5).zero?
    ret << "Plong" if (num%7).zero?
    ret << num.to_s if ret.empty?
    ret
  end
end