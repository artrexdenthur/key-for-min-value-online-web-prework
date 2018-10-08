# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'
require 'pry-nav'

def key_for_min_value(hash)
  x = 0 
  hash.map do |key, val|
    binding.pry
    if x == 0
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
