def nyc_pigeon_organizer(data)
  birds = {}
  data.each do |key, value|
    p data
    value.each do |new_value, bird_names|
      p value
      bird_names.each do |name|
        if !birds[name]
          birds[name] = {}
        end
        if !birds[name][key]
          birds[name][key] = []
        end
        birds[name][key] << new_value.to_s
      end
    end
  end
  return birds
end

