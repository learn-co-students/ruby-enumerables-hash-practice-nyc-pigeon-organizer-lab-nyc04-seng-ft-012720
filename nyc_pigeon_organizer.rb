# def nyc_pigeon_organizer(data)
#   # write your code here!
#   new_hash = {}
#   data.each do |property, hash|
#     hash.each do |attribute, array|
#       array.each do |name|
#         if !new_hash.has_key?(name)
#           new_hash[name] = {}
#         end
#
#         if !new_hash[name].has_key?(property)
#           new_hash[name][property] = []
#         end
#
#         if !new_hash[name][property].include?(attribute)
#           new_hash[name][property] << attribute.to_s
#         end
#       end
#     end
#   end
#   new_hash
# end



def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|

        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
end
