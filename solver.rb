class Solver
  def factorial(number)
    raise ArgumentError, 'Negative input' if number.negative?
    (1..number).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end
end
