require 'date'

file, new_file = 'logs/pickle.html', DateTime.now.strftime('%s') 

if File.exists?(file)
  File.rename(file, "logs/pickle_#{new_file}.html") 
end

command = %Q(cucumber --format 'Timestamped::HtmlFormatter' --out #{file})

exec command

