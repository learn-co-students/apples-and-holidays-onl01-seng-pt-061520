require 'pry'

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

   def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash.each do |seasons, holidays|
      holidays.each do |days, characteristics|
        if days == :fourth_of_july
          return characteristics[1]
        end
      end
