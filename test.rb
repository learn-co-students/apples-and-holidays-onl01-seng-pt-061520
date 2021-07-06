day = :new_years
one = day.to_s 
 one["_"] = " "
      two = one.split
      two.each do |word|
        word.capitalize!
      end
    puts days = two.join(" ")