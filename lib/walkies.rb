# frozen_string_literal: true

def ten_minute_walk?(route)
    return false  if route.length > 10
   

end

def eastArray(route)
    return route.select{ |n| ( n == 'e' || n == 'w' )}
end

def northArray(route)
    return route.select{ |n| ( n == 'n' || n == 's' )}
end