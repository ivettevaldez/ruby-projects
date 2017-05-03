#!usr/bin/env ruby

class Gear
	attr_reader :chainring, :cog, :rim, :tire
	
	def initialize(chainring, cog, rim, tire)
		@chainring = chainring
		@cog	   = cog
		@rim	   = rim
		@tire	   = tire
	end

	def ratio
		chainring / cog.to_f
	end

	def gear_inches
		# Tire goes around rim twice for diameter
		ratio * (rim + (tire * 2))
	end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches	# -> 137.090909090909
puts Gear.new(52, 11, 24, 1.25).gear_inches	# -> 125.272727272727
