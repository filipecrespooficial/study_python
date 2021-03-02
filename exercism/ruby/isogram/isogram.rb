=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
# require 'pry'

class Isogram
  def self.isogram?(input)
    ("a".."z").all?{|x| input.downcase.count(x)<=1}
  end
end