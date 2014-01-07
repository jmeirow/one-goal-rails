
require 'pp'



str = ''
File.open("system.txt", "r").each_line do |line|
  str = line
end

records =  eval(str)

puts records.class


# SystemText.delete_all

# pp = eval(str)

records.each do |record|
  x = SystemText.new 
  x.key = record[:key]
  x.value = record[:value]
  x.created_at = record[:created_at]
  x.updated_at = record[:updated_at]
  x.description = record[:description]
  x.save
end



# File.open("system.txt", "w") do |f|
#  f.puts(SystemText.all.collect {|x| x.to_h}.to_s)
# end
