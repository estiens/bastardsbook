
require "open-uri"
remote_base_url = "http://en.wikipedia.org/wiki/"

print "What year would you like to start?\n>> "
startyear=gets.chomp
print "What year would you like to end?\n>> "
endyear=gets.chomp

(startyear..endyear).each do |x|
  remote_full_url = remote_base_url + x
  somedata = open(remote_full_url).read
  puts "fetching data from #{remote_full_url}"
  sleep 1
  my_local_filename = x +"_copy" ".html"
  my_local_file = open(my_local_filename, "w")
  my_local_file.write(somedata)
  puts "writing to #{my_local_filename}"  
  sleep 1  
  my_local_file.close
end