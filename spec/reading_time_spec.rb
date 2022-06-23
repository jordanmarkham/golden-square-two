require 'reading_time'

RSpec.describe 'Takes string of any length, returns how long it will take in minutes if user has a reading speed of 200wpm.' do
  context "Given no text" do
    it "Outputs 0" do
      result = reading_time("")
      expect(result).to eq 0
    end
  end
  it "Outputs 0.005 when 1 word is given..." do
    result = reading_time("yes")
    expect(result).to eq 0.005
  end
  it "Outputs 1 when 200 words are given..." do
    result = reading_time("yes " * 200)
    expect(result).to eq 1
  end
  it "Outputs 5 when 1000 words are given..." do
    result = reading_time("yes " * 1000)
    expect(result).to eq 5
  end
  it "Outputs 25 when 5000 words are given..." do
    result = reading_time("yes " * 5000)
    expect(result).to eq 25
  end
  it "Outputs 125 when 25000 words are given..." do
    result = reading_time("yes " * 25000)
    expect(result).to eq 125
  end
  it "Outputs 1250 when 250000 words are given..." do
    result = reading_time("yes " * 250000)
    expect(result).to eq 1250
  end
  it "Outputs 25000 when 5000000 words are given..." do
    result = reading_time("yes " * 5000000)
    expect(result).to eq 25000
  end
end