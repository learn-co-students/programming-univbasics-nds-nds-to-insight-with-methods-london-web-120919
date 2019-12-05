require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  total = 0
    result = {}
    i = 0
    while i < nds.length do
      new_key = nds[i][:name]
      y = 0
      while y < nds[i][:movies].length do
        total += nds[i][:movies][y][:worldwide_gross]
        y += 1
      end
      result[new_key] = total
      i += 1
      total = 0
    end
    result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  i = 0
  while i < director_data[:movies].length do
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  total
end
