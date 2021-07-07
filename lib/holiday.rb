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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


#      holiday_string = holiday.to_s
#      holiday_string = holiday_string.gsub("_", " ")
#      holiday_string
#     supply_string  = supplies.join(", ")

=begin
    puts "#{season.capitalize()}:"
    holiday_and_supply_hash.each do |holiday, supplies|
      holiday_string = holiday.to_s
      puts " #{holiday_string.gsub("_"," ").split.map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
=end


=begin
def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday_and_supply_hash|
    puts "#{season.capitalize()}:"
    holiday_and_supply_hash.each do |holiday_and_supply_hash, supplies|
      holiday_string = holiday_and_supply_hash.to_s
      holiday_string = holiday_string.gsub("_", " ")
      holiday_string.split(" ").map{|x| x.capitalize}.join(" ")
      supply_string = supplies.join(", ")
      puts "  #{holiday_string}: #{supply_string}"
    end
  end
end
=end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday_and_supply_hash|
    puts "#{season.capitalize()}:"
    holiday_and_supply_hash.each do |holiday, supplies|
      holiday_string = holiday.to_s
      holiday_string = holiday_string.gsub("_", " ").split(" ").map{|x| x.capitalize}.join(" ")
      supply_string = supplies.join(", ")
      puts "  #{holiday_string}: #{supply_string}"
    end
  end
end




  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holiday_and_supply_hash|
    holiday_and_supply_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_array.push(holiday)   
      end
    end
  end
  holiday_array
end








