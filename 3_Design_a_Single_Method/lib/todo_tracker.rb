def todo_tracker(text)
    if text.empty?
        fail "No text found"
    end
    if text.include? "#TODO"
        return true
    else
        return false
    end
end