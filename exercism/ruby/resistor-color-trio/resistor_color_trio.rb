=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end

class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def initialize(resistor)
    @resistor = resistor
  end

  def label
    "0" * @resistor[2]
    # "Resistor value: #{COLORS.find_index(@resistor[0])}#{COLORS.find_index(@resistor[1])} ohms"
  end
end
