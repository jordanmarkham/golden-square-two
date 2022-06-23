def get_most_common_letter(text)
  counter = Hash.new(0)
  #p counter
  text.chars.each do |char|
    #p counter[char]
    counter[char] += 1 unless char == " "
  end
  counter.to_a.sort_by { |element| element[1] }.reverse[0][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

=begin

{"t"=>3,
 "h"=>3,
 "e"=>4,
 " "=>8,
 "r"=>4,
 "o"=>7,
 "f"=>4,
 ","=>2,
 "i"=>2,
 "s"=>1,
 "n"=>1,
 "!"=>1}

=end

p get_most_common_letter("the roof, the roof, the roof is on fire!")