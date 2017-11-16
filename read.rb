# read.rb

filename = ARGV.first
file = open(filename)

puts file.read