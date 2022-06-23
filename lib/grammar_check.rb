def grammar_check(string = nil)
  fail "No text provided!" if string == nil || string.is_a?(Integer) || string.is_a?(Float)
  string[0] == string[0].upcase && (string[-1] == '.' || string[-1] == '?' || string[-1] == '!') ? true : false
end