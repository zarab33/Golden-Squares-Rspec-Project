def grammer_checker(text)
    fail "Not a sentence." if text.empty?
    first_capital_letter = text[0].upcase == text[0]
    full_stop_str_end = text[-1] == "."
    if first_capital_letter && full_stop_str_end
     return true
  else
     return false
        
    end
end