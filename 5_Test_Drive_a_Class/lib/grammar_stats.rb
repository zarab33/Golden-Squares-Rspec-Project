class GrammarStats
  def initialize
    @check = true
    @pass_count = 0
    @total_count = 0
    # ...
  end

  def check(text) 
     fail "Not a sentence." if text.empty?

    first_capital_letter = text[0].upcase == text[0]
    sentence_end = ['.', '?', '!'].include?(text[-1])

     result = first_capital_letter && sentence_end

      if result
        @pass_count += 1
      end
        @total_count += 1
        result 
    end


    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    

  def percentage_good
      if @total_count == 0
        return 0.0
      else
        return (@pass_count.to_f / @total_count.to_f) * 100.0
      end
    end
  end
    


    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.