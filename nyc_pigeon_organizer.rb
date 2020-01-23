def nyc_pigeon_organizer(data)
new_pigeon_data = {}

data.each do |pigeon_attribute, hash_of_attribute_values|
  hash_of_attribute_values.each do |attribute_name, pigeon_name|
    pigeon_name.each do |names_of_array|
      if !new_pigeon_data[names_of_array]
      new_pigeon_data[names_of_array] = {pigeon_attribute => [attribute_name.to_s]}
      elsif !new_pigeon_data[names_of_array][pigeon_attribute]
      new_pigeon_data[names_of_array][pigeon_attribute] = [attribute_name.to_s]
      else
      new_pigeon_data[names_of_array][pigeon_attribute] << attribute_name.to_s
      end
    end
  end
end 

new_pigeon_data
end
