=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores
  def initialize(scores)
    @scores = scores
    @scores_order = scores.sort
  end

  def scores
    @scores
  end

  def latest
    if @scores_order.first == 0
      @scores_order[1]
    else
      @scores_order
    end
  end

  def personal_best
    @scores_order.last
  end

  def personal_top_three
    @scores_order.last(3).reverse
  end

  def latest_is_personal_best?
    if @scores.last == personal_best
      true
    else
      false
    end
  end
end