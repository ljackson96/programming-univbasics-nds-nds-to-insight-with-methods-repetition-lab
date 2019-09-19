require_relative './directors_database'
# Call the method directors_database to retrieve the NDS

def directors_totals(source)
  #  Here's our solution. You can replace with your solution if you prefer.
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  #  Here's our solution. You can replace with your solution if you prefer.
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  source.map{ |d| d[:name] }
end

def total_gross(source)
  # Write this implementation
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  list_of_directors(source).reduce(0){|total, name| total +=  directors_totals(source)[name]}
end


