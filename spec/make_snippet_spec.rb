require 'make_snippet'

RSpec.describe 'Takes string as argument, returns first five words and then ... if more.' do
  it 'Takes string and returns it.' do
    result = make_snippet("Hello there!")
    expect(result).to eq "Hello there!"
  end
  it 'Adds a "..." when there are more than five words.' do
    result = make_snippet("Hello there! How are you? I'm okay, thanks!")
    expect(result).to eq "Hello there! How are you?..."
  end
end