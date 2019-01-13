# your code goes here
def begins_with_r(tools)
  tools.all? { |tool| tool.downcase.chr == "r"}


end

def contain_a(tools)
  tools.select { |tool| tool.include?("a") }
end

def first_wa(tools)

  tools.find { |tool| tool.to_s.start_with?("wa")}

end

def remove_non_strings(tools)

  tools.reject { |tool| tool.class != String}

end

def count_elements(array)
array.uniq.each {|i| count = 0
array.each {|i2| if i2 == i then count += 1 end}
  i[:count] = count}
end

def merge_data(keys, data)

merged_data = []
keys.each do |k_hash|
  data.each do |d_hash|
    d_hash.each do |d_hash_key, d_hash_value|
      if k_hash[:first_name] == d_hash_key
        merged_data << k_hash.merge(d_hash_value)
      end
    end
  end
end
merged_data
end

def find_cool(array)
  array.select {|i| i.any? {|k, v| v == "cool"}}

end

def organize_schools(schools)
  location_hash = {}
  schools.collect { |k,v| location_hash[v[:location]] = [] }
  location_hash.each {|k,v| schools.each {|k1,v1|  if k == v1[:location] then v << k1  end} }


end
