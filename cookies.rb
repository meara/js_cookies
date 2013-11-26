class Cookie
 
  attr_reader :in_oven, :time_in_oven, :cookie_type, :bake_time
 
  def initialize(cookie_type, bake_time)
    @time_in_oven = 0
    @baked = false
    @in_oven = false
    @cookie_type = cookie_type
    @bake_time = bake_time
  end
 
  def burned?
    time_in_oven > bake_time
  end
 
  def baked?
    time_in_oven >= @bake_time
  end
 
  def put_in_oven
    @in_oven = true
  end
 
  def remove_from_oven
    @in_oven = false
  end
 
  def increment_time_in_oven
    @time_in_oven += 1
  end
 
  def bake_cookie
    unless in_oven
      put_in_oven
      "Cookie is in oven: #{in_oven}"
    end
 
    until baked?
      increment_time_in_oven
      puts "Time in oven is #{time_in_oven}"
    end
 
    if baked?
      remove_from_oven
      puts "Cookie in oven: #{in_oven}"
      puts "Cookie is baked: #{baked?}"
    end
    #if cookie isn't baked
      #check if cookie in oven
      #if false, put in oven
      #else, increment time_in_oven until time_in_oven == baketime
      #when cookie is baked, remove cookie from oven
  end
 
 
end
 
 
test_cookie = Cookie.new("chocolate chip", 20)
 
# puts "Is cookie in oven?"
# puts test_cookie.in_oven
# puts "Putting cookie in oven..."
# test_cookie.put_in_oven
# puts "Is cookie in oven?"
# puts test_cookie.in_oven
# puts "Removing cookie from oven..."
# test_cookie.remove_from_oven
# puts "Is cookie in oven?"
# puts test_cookie.in_oven
# puts "Is cookie baked?"
# puts test_cookie.baked?
 
#puts "Test cookie is cooking: #{test_cookie.increment_time_in_oven}"
# puts "Test cookie is in oven: #{test_cookie.in_oven}"
# puts "Test is cookie is baked: #{test_cookie.baked?}"
# puts "Time cookie has been in oven: #{test_cookie.time_in_oven}"
# test_cookie.increment_time_in_oven
# puts "Time cookie has been in oven: #{test_cookie.time_in_oven}"
 
# puts "Cookie type is #{test_cookie.cookie_type}"
# puts "Is cookie baked: #{test_cookie.baked?}"
# test_cookie.bake_cookie
# puts "after baking..."
# puts "Is cookie baked: #{test_cookie.baked?}"
# puts "Is test_cookie burned? #{test_cookie.burned?}"
 
burned_cookie = Cookie.new("Peanut Butter", 25)
 
puts "Cookie type is #{burned_cookie.cookie_type}"
puts "Is cookie baked: #{burned_cookie.baked?}"
burned_cookie.bake_cookie
puts "After baking for bake_time..."
puts "Is cookie baked: #{burned_cookie.baked?}"
puts "Is burned_cookie burned? #{burned_cookie.burned?}"
puts "We forgot to take the cookie out!"
burned_cookie.increment_time_in_oven
puts "Time in oven is: #{burned_cookie.time_in_oven}"
burned_cookie.increment_time_in_oven
puts "Time in oven is: #{burned_cookie.time_in_oven}"
burned_cookie.increment_time_in_oven
puts "Time in oven is: #{burned_cookie.time_in_oven}"
burned_cookie.increment_time_in_oven
puts "Time in oven is: #{burned_cookie.time_in_oven}"
puts "Is burned_cookie burned? #{burned_cookie.burned?}"
