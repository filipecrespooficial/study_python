=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(str)
    test = ""
    str = str.tr('-', ' ')
    str.split do | s |
      test = "#{test}#{s[0]}"
    end
    test.upcase
  end
end
