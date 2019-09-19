require_relative './directors_database'
# Call the method directors_database to retrieve the NDS

def directors_totals
  #  Here's our solution. You can replace with your solution if you prefer.
  directors_database.reduce({}) do |memo, d|
    memo[d[:name]] = gross_for_director(d)
    memo
  end
end

def gross_for_director(d)
  #  Here's our solution. You can replace with your solution if you prefer.
  d[:movies].reduce(0){ |dir_total, m| dir_total += m[:worldwide_gross]; dir_total }
end

def list_of_directors
  # Write this implementation
  directors_database.map{ |d| d[:name] }
end

def total_gross
  # Write this implementation
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  list_of_directors.reduce(0){|total, name| total += directors_totals[name]}
end


