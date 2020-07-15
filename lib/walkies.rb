# frozen_string_literal: true

def ten_minute_walk?(route)
  return false if route.length > 10

  if (west_count(route) == east_count(route)) && (south_count(route) == north_count(route))
    true
  else
    false
  end
end

def west_count(route)
  west = route.select { |n|  n == 'w' }.count
end

def east_count(route)
  east = route.select { |n|  n == 'e' }.count
end

def north_count(route)
  route.select { |n| n == 'n' }.count
end

def south_count(route)
  route.select { |n| n == 's' }.count
end
