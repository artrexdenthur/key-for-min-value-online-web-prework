# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

def key_for_min_value(hash)
  x = 0 
  hash.map do |key, val|
    if x == 0
      binding.pry
      lowval = val
      lowkey = key
      x = 1
    end
    if val < lowval
      lowval = val
      lowkey = key
    end
  end

  lowkey
end
