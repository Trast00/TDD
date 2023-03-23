require_relative '../Solver'

describe Solver do
  before(:all) do
    @solver = Solver.new
  end
  context "#fatorial" do

    it "factorial return Integer" do
      expect(@solver.fatorial(4)).to be_kind_of Integer
    end

    it "factorial 0 and 1 is 1" do
      expect(@solver.fatorial(0)).to eq 1
      expect(@solver.fatorial(1)).to eq 1
    end

    it "factorial 4" do
      expect(@solver.fatorial(4)).to eq 24
    end

    it "factorial 10" do
      expect(@solver.fatorial(4)).to eq 3628800
    end

    it "factorial raise error for negative values" do
      expect(@solver.fatorial(-4)).to raise_error(ArgumentError)
    end
  end

end