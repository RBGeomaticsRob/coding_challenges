# Ilya & Dan

def nearby_az(string)
  result = false
  arr = string.split("")
  arr.each do |ch|
    if ch == "a"
      (arr.index(ch)..arr.index(ch)+3).each do |three|
        if arr[three] == "z"
          result = true
          break
        end
      end
    end
    break if result == true
  end
  return result
end

#Jordan
def nearby_az(string)
  idx1 = 0
  while idx1 < string.length
    if string[idx1] != "a"
      idx1 += 1
      next
    end

    idx2 = idx1 + 1
    while (idx2 < string.length) && (idx2 <= idx1 + 3)
      if string[idx2] == "z"
        return true
      end

      idx2 += 1
    end

    idx1 += 1
  end

  return false
end
#===========
#Mark and Joe
def nearby_az(string)
  if string =~ /a.{0,2}z/
    true
  else
    false
  end
end
#===============
#Rob and Gus

def nearby_az(string)
  # if string =~ /(a..z|a.z|az)/
  #   return true
  # end

  # return false
  (string =~ /(a..z|a.z|az)/) != nil
end

# Ichi

def nearby_az(string)
  pos = 0
  string.chars.each_with_index do |letter, index|
    pos = index if letter == "a"
  end

  i = 0
  while i <= pos + 3
    return true if string[pos + i] == "z"
    i += 1
  end
end
