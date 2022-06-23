ONE


{{PROBLEM}} Method Design Recipe

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

User needs to work out how long it will take to read a text based on a 200wpm reading speed.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

def reading_time(string) #method, takes text being read as arg
  return string.split(' ').length / 200 #splits the string into an array of words, then calulates the length (total number of elements in array) divided by 200 (words per minute), to give an answer.
end

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

reading_time("yes") => 0.005
reading_time("yes" * 200) => 1
reading_time("yes" * 1000) => 5
reading_time("yes" * 5000) => 25
reading_time("yes" * 25000) => 125
reading_time("yes" * 250000) => 1250  
reading_time("yes" * 5000000) => 25000

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.


TWO


PROBLEM

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

Program must check that the first word of an inputted string starts with a capital letter, and that the last word ends with a suitable punctuation mark ('.', '!', '?').

METHODS

grammar_check: takes string as input
checks first character of string, then last character
returns true or false, depending on an if statement

TESTS

grammar_check("Hello there!") => true
grammar_check("wazzzzaaaaaaap!") => false
grammar_check("What's going on here") => false
grammar_check("what's going on here") => false
grammar_check("What's going on here?") => true
grammar_check("I hope you are all okay.") => true
grammar_check("Hey! Look at this:") => false

^ consider ".", "?" and "!" to end a sentence.
":" would expect something to follow...


CHALLENGE


PROBLEM

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

Program must take a string input from the user, and return true if string contains '#TODO', or return false if it does not.

METHODS

task_tracker: accepts string input
checks if string includes '#TODO'
outputs true if true, false if false

TESTS

task_tracker() => "No text provided!" - error
task_tracker("Task one: do this") => false
task_tracker("#TODO") => true
task_tracker("All tasks: 1. Do something #TODO 2. Do something else #DONE") => true