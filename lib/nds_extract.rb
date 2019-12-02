require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
result = {}
  dir_idx = 0
  while dir_idx < nds.length
    movie_idx = 0
    worldwide_gross_dir = 0
    while movie_idx < nds[dir_idx][:movies].count
      worldwide_gross_dir += nds[dir_idx][:movies][movie_idx][:worldwide_gross]
      movie_idx += 1
    end
    dir_name = nds[dir_idx][:name]
    result[dir_name] = worldwide_gross_dir
    dir_idx += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)

  result = 0
  movie_idx = 0
    while movie_idx < director_data[:movies].count
      result += director_data[:movies][movie_idx][:worldwide_gross]
      movie_idx += 1
    end
    result
end
