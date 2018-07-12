##############################################################
# RbConfig to determine host OS and exit if not mac or linux #
##############################################################
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
