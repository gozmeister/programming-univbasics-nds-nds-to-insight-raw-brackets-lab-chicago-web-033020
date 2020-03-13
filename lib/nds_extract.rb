$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
directors = 0
result = {}

while directors < nds.length do
  total_gross = 0
  movie_index = 0
  directors_movies = nds[directors][:movies]
  while movie_index < directors_movies.length
  total_gross += directors_movies[movie_index][:worldwide_gross]
  movie_index +=1
  end
  name_of_director = nds[directors][:name]
  result[name_of_director] = total_gross
  directors +=1
end

result
end
