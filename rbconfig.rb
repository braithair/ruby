# Name:		rbconfig.rb
# Author:	Matthew McCracken
# Version:	1.0
# Descriptor:	Checks your OS version based on interpretor

# Ensure that the rbconfig gem is included.
require 'rbconfig'

puts RbConfig::CONFIG['host_os']
puts ''
puts 'Next up... '
puts ''
