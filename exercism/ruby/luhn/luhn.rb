=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(value)
    total = 0;

    value.split('').each do |x|
      # total = total + x
    end

    if total % 10 == 0
      return true
    else
      return false
    end
  end
end