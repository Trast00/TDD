require_relative '../solver'

describe Solver do
  before(:all) do
    @solver = Solver.new
  end
  context '#factorial' do
    it 'factorial return Integer' do
      expect(@solver.factorial(4)).to be_kind_of Integer
    end

    it 'factorial 0 and 1 is 1' do
      expect(@solver.factorial(0)).to eq 1
      expect(@solver.factorial(1)).to eq 1
    end

    it 'factorial 4' do
      expect(@solver.factorial(4)).to eq 24
    end

    it 'factorial 10' do
      expect(@solver.factorial(10)).to eq 3_628_800
    end

    it 'factorial raise error for negative values' do
      expect { @solver.factorial(-4) }.to raise_error(ArgumentError)
    end
  end

  context '#reverse' do
    it 'Empty string return empty string' do
      expect(@solver.reverse('')).to eq ''
    end

    it "reverse 'hello' should be 'olleh' " do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end

    it "reverse 'SALUT' should be 'TULAS' " do
      expect(@solver.reverse('SALUT')).to eq 'TULAS'
    end
  end

  context '#fizzbuzz' do
    it 'N = 3 should return fizz' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'N = 5 should return fizz' do
      expect(@solver.fizzbuzz(5)).to eq 'buzz'
    end

    it 'N = 15 should return fizzbuzz' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'N = 7 should return 7 as string' do
      expect(@solver.fizzbuzz(7)).to eq '7'
      expect(@solver.fizzbuzz(7)).to be_kind_of String
    end
  end
end
