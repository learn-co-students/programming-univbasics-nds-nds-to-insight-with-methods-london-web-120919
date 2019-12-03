require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_num = 0
  all_grosses = {}
  while director_num < nds.length
    all_grosses[nds[director_num][:name]] = gross_for_director(nds[director_num])
    director_num += 1
  end
  all_grosses
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  title_num = 0
  total_gross = 0
  while title_num < director_data[:movies].length
    total_gross += director_data[:movies][title_num][:worldwide_gross]
    title_num += 1
  end
  total_gross
end
