require 'pry'
require_relative 'urlEntry'

class Parser

  attr_accessor :file, :urls
  
  def initialize
    @urls = []
  end

  def self.read_file(file)
    parser = Parser.new
    File.readlines(file).each do |line|      
      parser.urls << parse_urls(line)
    end
    parser
  end

  def self.parse_urls(string)
    path = string.split(" ")[0]
    ip = string.split(" ")[1]
    UrlEntry.new(path, ip)
  end
end
