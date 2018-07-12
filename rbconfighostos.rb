##############################################################
# RbConfig to determine host OS and exit if not mac or linux #
##############################################################
require 'rbconfig'

@os = RbConfig::CONFIG['host_os']

case
when @os.downcase.include?('linux')
  @os = 'Platform is Linux'
when @os.downcase.include?('darwin')
  @os = 'Platform is OSX'
else
  puts 'Platform is Windows'
  exit
end
