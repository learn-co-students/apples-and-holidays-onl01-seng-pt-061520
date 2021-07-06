def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.capitalize}" + ":"
    data.each do |day, value|
      one = day.to_s
      if one.include? "_"
        one.gsub!("_", " ")
      end
      
      two = one.split
      two.each do |word|
        word.capitalize!
      end
      days = two.join(" ")
      puts "  #{days}: #{value.join(", ")}"
    end
  end
end
holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
all_supplies_in_holidays(holiday_supplies)