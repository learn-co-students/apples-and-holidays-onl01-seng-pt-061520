require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_detail_hash|
    if season == :winter
      season_detail_hash.each do |attribute, data|
        data << supply
      end
    end
  end
  # holiday_hash[:winter][:christmas] = supply
  # holiday_hash[:winter][:new_years] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  #binding.pry
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  # convert hash_keys with .to_s
  # need to split .capitalize! and join to make each word initial cap
  output = ""

  holiday_hash.each do |season, holiday_hash|
    #insert the Season and new line
    puts "#{season.capitalize.to_s}:"
    #iterate through and output the string
    holiday_hash.each do |holiday, data|
      #capitalize
      holiday_symbol = holiday.to_s.split("_")
      holiday_symbol.collect do |words|
        words.capitalize!
      end
      #output the holiday and items
      puts "  #{holiday_symbol.join(" ").chomp}: #{data.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, data|
      data.each do |item|
        if item == "BBQ"
          holiday_array << attribute
        end
      end
    end
  end
  holiday_array
end
