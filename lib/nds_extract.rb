require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
require 'pp'

pp nds

require "pry" 
def directors_totals(nds)
  binding.pry 
  result = {}
  directors_index = 0 
  
  while directors_index < nds.length do
    director_name = nds[directors_index][:name]
    
    total[director_name] = 0 
    movie_index = 0 
    
    while movie_index < nds[directors_index][:movie].length do
     result[director_name] += nds[directors_index][:movie][movie_index][worldwide_grosses]
    movie_index += 1 
  end
  directors_index += 1 
end
total
