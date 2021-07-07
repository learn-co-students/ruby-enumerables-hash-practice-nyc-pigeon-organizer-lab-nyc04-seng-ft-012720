require 'pry'
def nyc_pigeon_organizer(data)
    pigeon = {}
    # binding.pry
    
   
  data.each do |key, value|
    value.each do |des, arr|
      arr.each do |name|
        if pigeon.has_key?(name)
            if pigeon[name].has_key?(key)
               pigeon[name][key] << des.to_s 
             else
               pigeon[name][key] = [des.to_s]
            end
          else
            pigeon[name] = {key=>[des.to_s]} 
          end
      end 
    end 
  end
  return pigeon
end  



