def nyc_pigeon_organizer(data)
  organized = {}
  
  
  data_keys = data.keys
  data_keys.each do |key|
    data_values = data[key].keys
    data_values.each do |value|
      data[key][value].each do |name|
        if !organized.has_key?(name)
          organized[name] = {
            color: [],
            gender: [],
            lives: []
          }
        else
          organized[name][key] = [value]
        end
      end
    end
  end
  
  p organized
  organized
end
