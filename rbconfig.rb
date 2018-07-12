#####################################################################################
# RbConfig is the recomended way to determine interpreter,                          #
# version and OS. Great reference:                                                  #
# http://rbjl.net/35-how-to-properly-check-for-your-ruby-interpreter-version-and-os #
#####################################################################################
require 'rbconfig'

puts RbConfig::CONFIG['host_os']
puts ''
puts 'Next up... '
puts ''
