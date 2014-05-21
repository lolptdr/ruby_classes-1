# Pet = Class.new do 
class Pet
	def speak(sound)
		Kernel.puts("#{sound*2}")
	end

	def poop
		puts ("I'm pooping!")
	end

	def wag
		puts ("I'm wagging my tail!")
	end

	def dogage(years)
		puts "You are #{years*7} dog years old."
	end
end


# class Marker
# 	def set_color(my_color)
# 		@color = my_color
# 	end

# 	def write
# 		Kernel.puts("I am writing with a #{@color} marker!")
# 	end
# end

5.send(:*,5)
"omg".send(:upcase)
['a','b','c'].send(:at,1)
['a','b','c'].send(:insert,2,'o','h','n'','o')
{}.send(size)
{character: "Mario"}.send(:has_key?,:character)

6-32
{html: true, json: false}.keys
"MakerSquare"*6
"MakerSquare".split('a')
['alpha','beta'][3]