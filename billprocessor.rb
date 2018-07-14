# Name:		billprocessor.rb
# Author:	Matthew McCracken
# Version:	1.0
# Descriptor:	Extracts zipped CSV data, collates, then outputs data.

# Ensure the gem requires are included
require 'rbconfig' # For OS case
require 'zip' #For Unzipping

# Begin case which will define where the root files will be found.
# There will be cases for 3 platforms: Linux, OSX and Windows
puts ". : P L A T F O R M   C H E C K : ."

# Define Operating System with namespace resolution operator (::) within rbconfig
@os = RbConfig::CONFIG['host_os']

case
when @os.downcase.include?('linux')
	# Define OS as Linux
	@os = 'linux'

	# Define Linux processing directories
	root_dir = "/tmp/bills"
	import_dir = "#{root_dir}/import"
	temp_dir = "#{root_dir}/temp"
	export_dir = "#{root_dir}/export"

	# Descrbe Environment
	puts "Platform is Linux, so the files will be in #{root_dir}"
when @os.downcase.include?('darwin')
	# Define OS as OSX
	@os = 'osx'

	# Define OSX processing directories (expected to be same as Linux)
	root_dir = "/tmp/bills"
	import_dir = "#{root_dir}/import"
	temp_dir = "#{root_dir}/temp"
	export_dir = "#{root_dir}/export"
  puts 'Platform is OSX'
else
	# Final covered OS if it's not the above, then it must be Windows.
  @os = 'windows'

	# Defines Windows based processing directories.
	root_dir = "C:\\tmp"
	import_dir = "#{root_dir}\\import"
	temp_dir = "#{root_dir}\\temp"
	export_dir = "#{root_dir}\\export"
  puts 'Platform is Windows'
end
puts

puts ". : D I R   C H E C K : ."
#Directory check based on the case above; to align filesystem and location.
if Dir.exist? "#{root_dir}"
	puts "Yes! The root directory was found!. It is #{root_dir}"
else
	puts "No! Cannot find the root directory. Please create the file strucutre."
end
puts

# Display the import directory structure needed
puts ". : R E Q U I R E M E N T S : ."
puts "Given your OS is #{@os}, your processing directories need to be:
#{import_dir} and #{temp_dir}, and #{export_dir}"
puts

# Now to unzip the files
puts ". : U N Z I P P I N G : ."
puts "Checking #{import_dir} for the files to be extracted."
