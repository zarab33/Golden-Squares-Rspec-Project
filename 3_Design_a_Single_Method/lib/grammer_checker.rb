def grammer_checker(text)
    fail "Not a sentence." if text.empty?
    
    first_capital_letter = text[0].upcase == text[0]
    sentence_end = ['.', '?', '!'].include?(text[-1])

     return first_capital_letter && sentence_end
end