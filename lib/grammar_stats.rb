class GrammarStats
  def initialize
    @number_checked = 0
    @number_good = 0
  end

  def check(text = nil) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "No text provided!" if text == nil || text.is_a?(Integer) || text.is_a?(Float)
    @number_checked += 1
    if(text[0] == text[0].upcase && (text[-1] == '.' || text[-1] == '?' || text[-1] == '!'))
      @number_good += 1
      true
    else
      false
    end
  
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    fail "No entries given..." if @number_checked == 0
    return @number_good / @number_checked.to_f * 100
  end
end