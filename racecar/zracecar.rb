require_relative 'racecar'

track1 = RaceTracks.new("IndyTrack")
car1 = RaceCars.new("JojoCar")
car2 = RaceCars.new("bbCar")
track1.enter_race(car1)
track1.enter_race(car2)
track1.start_race