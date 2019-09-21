require 'nokogiri'
require 'httparty'
require 'byebug'
puts '------------------------------------------------------'
puts 'Welcome, lets scrape this shit homie'

def scraper
  url = "https://www.wikipedia.org"
  unparsed = HTTParty.get(url)
  parsed = Nokogiri::HTML(unparsed)
  parsed
  byebug
end

scraper