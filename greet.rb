# Name:		greet.rb
# Author:	Matthew McCracken
# Version:	1.0
# Descriptor:	This is a basic greeter script, it says hi.

#!/usr/bin/env ruby

class MegaGreeter
	attr_accessor :names

	# Create obj
	def initialize(names = "World")
		@names=names
	end

	#Say hi to errbody
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			# @names is a list of name, iterate!
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	#Say bye to errbody
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			#Join the list elements with commas
			puts "Goodbye #{names.join(", ")}. Come back soon!"
		else
			puts "Goodbye #{names}. Come back soon yo!"
		end

	end
end


if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	#Change name to be "Mynamma"
	mg.say_hi
	mg.say_bye

	#Change to array of names
	mg.names = ["Daniel", "Jim", "Charles", "Yolonda", "Cuthbert Finkleberry"]
	mg.say_hi
	mg.say_bye

	#Change to nil
	mg.names = nil
	mg.say_hi
	mg.say_bye
end
