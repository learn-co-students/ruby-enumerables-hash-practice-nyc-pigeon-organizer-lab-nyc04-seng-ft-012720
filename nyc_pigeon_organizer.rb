













def nyc_pigeon_organizer(data)
  # write your code here!
  array1 = data[:gender][:male]
  array2 = data[:gender][:female]
  array_male = data[:gender][:male]
  array_female = data[:gender][:female]
  array_purple = data[:color][:purple]
  array_grey = data[:color][:grey]
  array_white = data[:color][:white]
  array_brown = data[:color][:brown]
  array_black = data[:color][:black]
  array_subway = data[:lives]["Subway"]
  array_centralpark = data[:lives]["Central Park"]
  array_library = data[:lives]["Library"]
  array_cityhall = data[:lives]["City Hall"]
  name_array = array1 + array2
  name_hash = Hash[name_array.collect {|name| [name, {:color => [], :lives => [], :gender => []}]}]
  pp data
  pp data[:gender][:male]
  pp data[:gender][:female]
  pp array1
  pp array2
  pp array_male
  pp array_female
  pp name_array
  array_female.each do |name|
     m = 0
     while m < array_male.length
         if array_male[m].include?(name)
            array_male.delete_at(m)
         end
     m += 1
     end
  end
  pp data[:gender][:male]
  pp data[:gender][:female]
  pp array1
  pp array2
  pp array_male
  pp array_female
  pp name_array
  pp name_hash
  pp array_purple
  pp array_grey
  pp array_white
  pp array_brown
  pp array_subway
  pp array_centralpark
  pp array_library
  pp array_cityhall
  pp name_array
  name_array = array1 + array2
  pp name_array
  i = 0
  while i < name_array.length do
      if array_male && array_male.include?(name_array[i]) 
         name_hash[name_array[i]][:gender] << "male"
      end
      if array_female && array_female.include?(name_array[i])
         name_hash[name_array[i]][:gender] << "female"
      end
      if array_purple && array_purple.include?(name_array[i]) 
         name_hash[name_array[i]][:color] << "purple"
      end
      if array_grey && array_grey.include?(name_array[i])
         name_hash[name_array[i]][:color] << "grey"
      end
      if array_white && array_white.include?(name_array[i])
         name_hash[name_array[i]][:color] << "white"
      end
      if array_brown && array_brown.include?(name_array[i])
         name_hash[name_array[i]][:color] << "brown"
      end
      if array_black && array_black.include?(name_array[i])
         name_hash[name_array[i]][:color] << "black"
      end
      if array_subway && array_subway.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "Subway"
      end
      if array_centralpark && array_centralpark.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "Central Park"
      end
      if array_library && array_library.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "Library"
      end
      if array_cityhall && array_cityhall.include?(name_array[i])
         name_hash[name_array[i]][:lives] << "City Hall"
      end
  i += 1
  end
  pp name_hash
end