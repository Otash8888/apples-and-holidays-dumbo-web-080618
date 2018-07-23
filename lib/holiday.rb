require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter] .each do |key,value|
  value.push(supply)
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
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







