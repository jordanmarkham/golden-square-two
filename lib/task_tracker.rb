def task_tracker(string = nil) #optional argument, throws up custom error if empty
  fail "No text provided!" if string.nil?
  string.include?('#TODO') ? true : false
end