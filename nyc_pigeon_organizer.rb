def nyc_pigeon_organizer(data)
  attributeindex = 0
  attributes = []
  birblist = Hash.new
  #this while loop populates a hash with all the names as keys pointing to empty hashes and accumulates all the attribute names (i.e. colors, gender, lives) in an array
  while attributeindex < data.length do
    data.values[attributeindex].map{|k,v| v.map{|birb| birblist[birb] = {}}}
    attributes << data.keys[attributeindex]
    attributeindex+=1
  end
   # stathash = Hash[attributes.map{|stat| [stat, []]}]
   birbstats = birblist.map{|k,v| [k, v = Hash[attributes.map{|stat| [stat, []]}]]}.to_h
   # pp 'ddsafsd'
    #pp  data
    #pp birbstats
   # data.map{|stat,value| value.map{|key,names| names.each{|x| birbstats[x.to_sym][stat] << key.to_s}}}
   data.map { |stat, value| 
     value.map { |key,names|

       names.map{ |x|
        birbstats[x][stat] << key.to_s

        }
      }
     }
  
   return birbstats
end