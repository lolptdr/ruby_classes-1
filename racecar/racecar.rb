## All the code from zracecar.rb - brought in from using the command `require_relative 'racecar'`.

class RaceTracks

	def initialize(trackname)
		@trackname = trackname
		@racetime = 0
		@racers = {}
		puts "#{@trackname}: All race cars to the start line! Please add race cars to the start line."
	end
	def enter_race(racecars)
		@racers.store(racecars,0)
		puts "Added a race car to the #{@trackname}: #{racecars.carname}"
	end
	def start_race
		warn "Race has begun. No more race cars can be added."
		# need something block addition to @racers array
		@racers.each do |car|
			car.carspeed = rand(60..80)
			"Race has started. #{@racecars.carname} is at #{car.carspeed}"
		end
	end
	def advance_race
		@racetime += 1
		results = {}

		if @racetime == 1
			puts "After hour 1: "
			@racers.each do |car|
				car.incrspeed = car.carspeed + rand(0..20)
				car.distance = car.incrspeed
				@racers
				puts "#{car.carname} is driving at #{car.incrspeed} mph."
			end
		elsif @racetime > 2 && @racetime < 5
			puts "After hour #{@racetime}:"
			@racers.each do |car|
				car.incrspeed = rand(0..20)
				car.distance = car.incrspeed*@racetime
				puts "#{car.carname} is driving at #{car.incrspeed} mph traversing #{car.distance} miles."
			end
		elsif @racetime == 5
			puts "After 5 hours, the race is over!"
			@racers.each do |car|
				car.distance += car.carspeed
				results.store(car.carname,car.distance)
				puts "#{car.carname} drove #{car.distance} miles."
			end

			final_distance = results.values.max
			first_place = results.select { |k,v| v == final_distance}.keys
			puts "#{first_place} is the winner!"
		else
			puts "wtf just happened"
		end
	end
end

class RaceCars
	attr_accessor :carname, :carspeed, :incrspeed, :distance
	def initialize(carname)
		@carname = carname
		@carspeed = 0
		@incrspeed = 0
		@distance = 0
		puts "#{@carname} has been added!"
	end
end