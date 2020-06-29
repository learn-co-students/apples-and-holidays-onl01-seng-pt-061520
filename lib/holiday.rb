require 'pry'
def second_supply_for_fourth_of_july(holiday_supplies)
 
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
 
  holiday_supplies[:winter].each {|k, v| holiday_supplies[:winter][k] << supply }
end	

def add_supply_to_memorial_day(holiday_supplies, supply)
 
  holiday_supplies[:spring][:memorial_day] << supply
end	

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
end	

def all_winter_holiday_supplies(holiday_supplies)

  holiday_supplies[:winter].values.flatten
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  array = holiday_hash[:winter].map do |holiday, items|
    items
  end
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday, supplies|
      supplies = supplies.join(", ")
      holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")<< ":"
      puts "  " + holiday + " " + supplies
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end
