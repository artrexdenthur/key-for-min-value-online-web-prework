# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'

def key_for_min_value(hash)
  x = 0 
  lowval = 0
  lowkey = nil
  hash.map do |key, val|
    if x == 0
      lowval = val
      lowkey = key
      x = 1
      binding.pry
    end
    if val < lowval
      lowval = val
      lowkey = key
    end
  end

  lowkey
end
