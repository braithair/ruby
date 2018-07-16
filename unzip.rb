# Name:					unzip.rb
# Author:				Matthew McCracken
# Version:			1.0
# Descriptor:		ONLY Extracts zipped CSV data. Method definition specifically
# 							for unpacking a zip file and putting it in a location.

# Zip method definition
# https://markhneedham.com/blog/2008/10/02/ruby-unzipping-a-file-using-rubyzip/
def unzip_file(file, destination)
	Zip::File.open(file) do |zip_file|
  	zip_file.each do |f|
  		f_path=File.join(destination, f.name)
  		FileUtils.mkdir_p(File.dirname(f_path))
  		f.extract(f_path)
   	end
 	end
end

#Define variables for the Zip extract method from above.
file = "C:/tmp/import/rk.zip" # Choose your file here
destination = "C:/tmp/temp/"  # Output your file here

# Unzip the files from the method above.
unzip_file(file, destination)
