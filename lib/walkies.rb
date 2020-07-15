# frozen_string_literal: true

def ten_minute_walk?(route)
  return false if route.length > 10

  (horizontal_back?(route) && vertical_back?(route))
end

# counts the relevant units travelled in the direction stipulated
def dir_count(route, dir)
  route.count(dir)
end

private

def horizontal_back?(route)
  (dir_count(route, 'w') == dir_count(route, 'e'))
end

def vertical_back?(route)
  (dir_count(route, 's') == dir_count(route, 'n'))
end
