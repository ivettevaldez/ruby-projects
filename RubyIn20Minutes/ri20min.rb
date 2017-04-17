#!usr/bin/env ruby

class MegaGreeter
	attr_accessor :names

	# Create the object
	def initialize(names = "World")
		@names = names
	end

	# Say hi to everybody
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			# @names is a list of some kind, iterate!
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	# Say bye to everybody
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			# Join the list elements with commas
			puts "Goodbye #{@names.join(", ")}. Come back soon!"
		else
			puts "Goodbye #{@names}. Come back soon!"
		end
	end
end


if __FILE__ == $0
	puts "\n---> Traditional stuff here"
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	puts "\n---> Change the name to be 'Ivette'"
	mg.names = "Ivette"
	mg.say_hi
	mg.say_bye

	puts "\n--->  Change the name to an array of names"
	mg.names = ["Ivette", "Albert", "Brenda", "Charles", "Dave", "Engelbert"]
	mg.say_hi
	mg.say_bye

	puts "\n---> Change to nil"
	mg.names = nil
	mg.say_hi
	mg.say_bye
	puts "\n"
end
