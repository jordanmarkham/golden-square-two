require 'grammar_stats'

RSpec.describe "Checks first and last words for capital letter + sentence-ending punctuation." do
  context "No text is given" do
    it "Returns error message when no text is provided" do
      grammar = GrammarStats.new
      expect{ grammar.check() }.to raise_error "No text provided!"
    end
  end
  it "Returns TRUE when given a capital letter and exclamation point '!'" do
    grammar = GrammarStats.new
    result = grammar.check("Hello there!")
    expect(result).to eq true
  end
  it "Returns FALSE when given NO capital letter and exclamation point '!'" do
    grammar = GrammarStats.new
    result = grammar.check("wazzzzaaaaaaap!")
    expect(result).to eq false
  end
  it "Returns FALSE when given a capital letter and NO punctuation" do
    grammar = GrammarStats.new
    result = grammar.check("What's going on here")
    expect(result).to eq false
  end
  it "Returns FALSE when given NO capital letter and NO punctuation" do
    grammar = GrammarStats.new
    result = grammar.check("what's going on here")
    expect(result).to eq false
  end
  it "Returns TRUE when given a capital letter and question mark '?'" do
    grammar = GrammarStats.new
    result = grammar.check("What's going on here?")
    expect(result).to eq true
  end
  it "Returns TRUE when given a capital letter and full stop '.'" do
    grammar = GrammarStats.new
    result = grammar.check("I hope you are all okay.")
    expect(result).to eq true
  end
  it "Returns FALSE when given a capital letter and insufficient punctuation mark ':'" do
    grammar = GrammarStats.new
    result = grammar.check("Hey! Look at this:")
    expect(result).to eq false
  end
  context "No entries are given before checking percentage of correct grammar" do
    it "Returns error message when running percentage_good" do
      grammar = GrammarStats.new
      expect { grammar.percentage_good }.to raise_error "No entries given..."
    end
  end
  it "Returns percentage of correct grammar." do
    grammar = GrammarStats.new
    grammar.check("wrong")
    grammar.check("wrong")
    grammar.check("wrong")
    grammar.check("wrong")
    grammar.check("Right.")
    result = grammar.percentage_good
    expect(result).to eq 20
  end
end