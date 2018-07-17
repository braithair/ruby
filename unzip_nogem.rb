# Invokes unzip for each file in a given directory
completed_files = Array.new
temp_dir = "C:\\tmp\\import\\"

Dir.foreach(temp_dir) do |file_name|
  if (file_name.include?(".zip") && !completed_files.include?(file_name))
    system("unzip", file_name)
    completed_files << file_name
  end
end
