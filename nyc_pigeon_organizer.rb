def nyc_pigeon_organizer(data)
  organized = {}
  
  
  data_keys = data.keys
  data_keys.each do |key|
    data_values = data[key].keys
    data_values.each do |value|
      data[key][value].each do |name|
        if !organized.has_key?(name)
          organized[name] = {}
        elsif !organized[name].has_key?(key)
          p "here am are"
          organized[name][key] = [value.to_s]
        else
          organized[name][key].push(value.to_s)
        end
      end
    end
  end
  
  organized
end
