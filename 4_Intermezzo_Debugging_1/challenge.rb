def get_most_common_letter(text)
  counter = Hash.new(0) #making a empty hash
  text.gsub(/\W+/, "").chars.each do |char| #clears out the empty spaces
  counter[char] += 1# for each character thats in the text it adds one to count the characters each time.
  end
  counter.to_a.sort_by { |key, value| -value }[0][0] #.to_a tuns the counter into an array. (key=letter, value = num)
  # sort_by sorted the array deending order from smallest first so added a minus to sort to the biggest and then called the first array = [0][0]
 
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")
# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!exit")
# => "o"