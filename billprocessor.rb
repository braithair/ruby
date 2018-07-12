# Name:		billprocessor.rb
# Author:	Matthew McCracken
# Version:	1.0
# Descriptor:	Extracts zipped CSV data, collates, then outputs data.

# Load the OS Checker rbconfig host os check ruby file
load 'rbconfighostos.rb'

# Define variable for directory
root_dir = "/tmp/bills"

# Simply displays the working directory for debug
puts root_dir

# Define processing directories
import_dir = "#{root_dir}/import"
temp_dir = "#{root_dir}/temp"
export_dir = "#{root_dir}/export"

#Display the import directory
puts import_dir
puts temp_dir
puts export_dir

#directory check
if Dir.exist? '/tmp/bills'
	puts "The root directory exists."
else
	puts "Cannot find the root directory."
end
