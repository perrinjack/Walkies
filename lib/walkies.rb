# frozen_string_literal: true

def ten_minute_walk?(route)
    return false  if route.length > 10
   
return route.select{ |n| ( n == 'e' || n == 'w' )}
end
