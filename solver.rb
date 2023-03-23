class Solver
  def factorial(n)
    raise ArgumentError, 'Negative input' if n.negative?
    (1..n).reduce(1, :*)
  end
end