# frozen_string_literal: true

def ten_minute_walk?(route)
  return false if route.length > 10
end

def westArray(route)
  west = route.select { |n|  n == 'w' }.count('w')
end

def eastArray(route)
  east = route.select { |n|  n == 'e' }.count('e')
end

def northArray(route)
  route.select { |n| n == 'n' }.count('n')
end

def southArray(route)
  route.select { |n| n == 's' }.count('s')
end
