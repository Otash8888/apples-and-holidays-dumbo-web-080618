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
 
 #:winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
 holiday_hash[:winter] .each do |key,value|
 value.push(supply)
end
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
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
holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  all_w_supplies_arr = []
 holiday_hash[:winter].values.each do |element|
 all_w_supplies_arr.concat(element)
 end
all_w_supplies_arr
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |key1,value1|
  puts "#{key1.to_s.capitalize}:"
   value1.each do |key2,value2|
	   puts "  #{(key2.to_s.gsub '_', ' ').split.map(&:capitalize)*' '}: #{value2.join(", ")}"
	 
	   
	   end
  
    
end

end

def all_holidays_with_bbq(holiday_hash)
 
 keys_with_bbq_arr = []
 holiday_hash.each do |key1,value1|
   value1.each do |key2, value2|
     value2.each do |element|
       if element == "BBQ"
         keys_with_bbq_arr.push(key2)
       end
     end
   end
 end
 keys_with_bbq_arr 
end







