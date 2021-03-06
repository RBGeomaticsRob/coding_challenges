#Ilya and Pavel
def is_prime?(number)
  (2..Math.sqrt(number).to_i).each do |divisor|
    return false if number % divisor == 0
  end
  true
end

#Jordan
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

#Mark 'n' Joe
def is_prime?(number)
  (2...number).each do |factor|
    if number % factor == 0
      return false
    end
  end
  return true
end


#Rob and Gus
def is_prime?(number)
  (2..number/2).each do |i|
    if number % i == 0
      return false
    end
  end

  return true
end


# Jade & Dan
def is_prime?(number)
  (2...number).each{|x| return false if number % x == 0}
  true
end


# Ichi & Mark
def is_prime?(number)
  return false if number == 0
  i = 1
  while i <= number
    return false if number % i == 0 && i != 1 && i != number && number != 0
    i += 1
  end
  return true
end


