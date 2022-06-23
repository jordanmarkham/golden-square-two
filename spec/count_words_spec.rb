require 'count_words'

RSpec.describe 'Takes string, returns word count.' do
  it 'Takes string, returns word count...' do
    result = count_words("Yo yo yo what up home slice")
    expect(result).to eq 7
  end
end