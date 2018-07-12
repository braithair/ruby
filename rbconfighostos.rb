# Name:		rbconfighostos.rb
# Author:	Matthew McCracken
# Version:	1.0
# Descriptor:	Checks your OS version

# Ensure that the rbconfig gem is included.
require 'rbconfig'

@os = RbConfig::CONFIG['host_os']

case
when @os.downcase.include?('linux')
  @os = 'linux'
  puts 'Platform is Linux'
when @os.downcase.include?('darwin')
  @os = 'osx'
  puts 'Platform is OSX'
else
  @os = 'windows'
  puts 'Platform is Windows'
  exit
end
