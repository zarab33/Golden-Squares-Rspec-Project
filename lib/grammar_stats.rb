class GrammarStats
  def initialize
    @check = true
    # ...
  end

  def check(text) 
     fail "Not a sentence." if text.empty?
     
    first_capital_letter = text[0].upcase == text[0]
    sentence_end = ['.', '?', '!'].include?(text[-1])

     return first_capital_letter && sentence_end
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end