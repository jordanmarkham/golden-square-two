require 'grammar_check'

RSpec.describe "Checks first and last words for capital letter + sentence-ending punctuation." do
  context "No text is given" do
    it "Returns error message when no text is provided" do
      expect{ result = grammar_check() }.to raise_error "No text provided!"
    end
  end
  it "Returns TRUE when given a capital letter and exclamation point '!'" do
    result = grammar_check("Hello there!")
    expect(result).to eq true
  end
  it "Returns FALSE when given NO capital letter and exclamation point '!'" do
    result = grammar_check("wazzzzaaaaaaap!")
    expect(result).to eq false
  end
  it "Returns FALSE when given a capital letter and NO punctuation" do
    result = grammar_check("What's going on here")
    expect(result).to eq false
  end
  it "Returns FALSE when given NO capital letter and NO punctuation" do
    result = grammar_check("what's going on here")
    expect(result).to eq false
  end
  it "Returns TRUE when given a capital letter and question mark '?'" do
    result = grammar_check("What's going on here?")
    expect(result).to eq true
  end
  it "Returns TRUE when given a capital letter and full stop '.'" do
    result = grammar_check("I hope you are all okay.")
    expect(result).to eq true
  end
  it "Returns FALSE when given a capital letter and insufficient punctuation mark ':'" do
    result = grammar_check("Hey! Look at this:")
    expect(result).to eq false
  end
end