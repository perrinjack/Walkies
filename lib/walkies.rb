# frozen_string_literal: true

def ten_minute_walk?(route)
  return false if route.length > 10

  if (dir_count(route, 'w') == dir_count(route, 'e')) && (dir_count(route, 's') == dir_count(route, 'n'))
    true
  else
    false
  end
end

# counts the relevant units travelled in the direction stipulated
def dir_count(route, dir)
  return route.count(dir)
end


