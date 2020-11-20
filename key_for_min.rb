# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    result = {}
    current_key = ""
    if name_hash.length == 0
        return nil
    else
       name_hash.collect do |key, value|
            if result.length == 0
                result[key] = value
                current_key = key
            else
                if value < result[current_key]
                    result[key] = value
                    current_key = key
                end
            end
        end


    end
    return current_key

end