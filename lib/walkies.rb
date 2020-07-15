# frozen_string_literal: true

def ten_minute_walk?(route)
  return false if route.length > 10

  if (direction_count(route, 'w') == direction_count(route, 'e')) && (direction_count(route, 's') == direction_count(route, 'n'))
    true
  else
    false
  end
end

# counts the relevant units travelled in the direction stipulated
def direction_count(route, dir)
  return route.select { |n|  n == dir }.count 
end


