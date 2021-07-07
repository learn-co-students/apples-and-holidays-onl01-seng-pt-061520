require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   {
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter].each {|x, i| holiday_hash [:winter] [x] << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |season, data|
   puts "#{season.to_s.capitalize!}:"
   
   data.each do |holiday, supply|
      array = holiday.to_s.split("_")
      last_holiday = []
      
        array.each do |x|
          last_holiday << x.capitalize
        end
        
      holiday = last_holiday.join(" ")
      supply = supply.join(", ")
      puts "  #{holiday}: #{supply}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  x = []
holiday_hash.each do |season, data|
  data.each do |holiday, value|
    value.each do |supply|
     if supply == "BBQ"
        x.push(holiday)
      end
    end
  end
end	
x
end








