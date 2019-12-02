require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0
    while director_index < nds.count do
      director_name = nds[director_index][:name]

      director_total = gross_for_director(nds[director_index])

      result[director_name] = director_total
      director_index += 1
    end
    result
end
#
# def directors_totals(nds)
#   result = {}
#   director_index = 0
#     while director_index < nds.count do
#       director_name = nds[director_index][:name]
#       director_total = 0
#       director_movies = nds[director_index][:movies]
#       movie_index = 0
#         while movie_index < director_movies.count do
#           director_total += director_movies[movie_index][:worldwide_gross]
#           movie_index += 1
#         end
#       result[director_name] = director_total
#       director_index += 1
#     end
#     result
# end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # binding.pry
  director_gross = 0
  movie_index = 0
  while movie_index < director_data[:movies].count do
    director_gross += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  director_gross
end
