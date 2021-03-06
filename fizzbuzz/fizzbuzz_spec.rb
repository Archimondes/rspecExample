require_relative './fizzbuzz.rb'

describe "FizzBuzz" do
  it "3 應該是 Fizz" do
    result = fizzbuzz(3)
    expect(result).to eq('Fizz')    # 结果应该要是 Fizz
  end

  it "5 應該是 Buzz" do
    result = fizzbuzz(5)
    expect(result).to eq('Buzz')     # 结果应该要是 Buzz
  end

  it "15 應該是 FizzBuzz" do
    result = fizzbuzz(15)
    expect(result).to eq('FizzBuzz')     # 结果应该要是 FizzBuzz
  end

  it "1 應該是 1" do
    result = fizzbuzz(1)
    expect(result).to eq(1)      # 结果应该要是 1
  end
end
