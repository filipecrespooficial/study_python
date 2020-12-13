=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(matrix)
    @matrix = matrix
    @matrix_final = make_matrix
  end

  def make_matrix
    mat = []
    @matrix.lines(chomp: true).each do | line |
      mat << line.split.map(&:to_i)
    end
    mat
  end

  def rows
    @matrix_final
  end

  def columns
    list = []
    make_matrix.each_with_index do | line, line_number |
      line.each_with_index do |collumn, collumn_numbem|
        if line_number == 0
          list[collumn_numbem] = []
        end
        list[collumn_numbem][line_number] = collumn
      end
    end
    list
  end
end

