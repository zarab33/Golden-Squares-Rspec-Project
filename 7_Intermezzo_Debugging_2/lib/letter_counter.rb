class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0) #new hash changed to start at 1
    most_common = nil 
    most_common_count = 0# changed to start at 0
    @text.chars.each do |char| # check/Iterate over each character in the text
      next unless is_letter?(char) # Skip non-letter characters (spaces)
      counter[char] = (counter[char] || 1) + 1 # Increase the count for the current character/ letter
      if counter[char] > most_common_count# Check if the current count is greater than the previous most common count
        most_common = char # Update the most common character
        most_common = char
        most_common_count += counter[char]
      end
    end
    return [most_common_count, most_common] # Return the count and the most common character as an array
  end
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i # Check if the character is a letter (case-insensitive)
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]