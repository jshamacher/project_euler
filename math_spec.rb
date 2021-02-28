require_relative 'math'

RSpec.describe Math, "#fibonacci" do
  it 'throws an error on out-of-bounds input' do
    expect {
      Math.fibonacci(-1)
    }.to raise_error('Index must be >= 0; provided value -1 is out of bounds')
  end

  it 'properly handles index 0' do
    expect(Math.fibonacci(0)).to eq 1
  end

  it 'properly handles index 1' do
    expect(Math.fibonacci(1)).to eq 2
  end

  it 'properly handles the first few non-primitive calls' do
    expect(Math.fibonacci(2)).to eq 3
    expect(Math.fibonacci(3)).to eq 5
    expect(Math.fibonacci(4)).to eq 8
    expect(Math.fibonacci(5)).to eq 13
  end
end
