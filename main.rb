#!/usr/bin/env ruby
#
require_relative './bin/parser'
require_relative './library/totalizer'

parser   = Parser.read_file(ARGV[0])


parser   = Parser.read_file(ARGV[0])
totalizer = Totalizer.new(parser.urls)

totalizer.calculate(unique: false).each do |url|
  puts "#{url[0]} #{url[1]} visits"
end

puts "\n"

totalizer.calculate(unique: true).each do |url|
  puts "#{url[0]} #{url[1]} visits"
end