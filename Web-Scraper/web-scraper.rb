require 'nokogiri'
require 'httparty'
require 'byebug'
puts '------------------------------------------------------'
puts 'Welcome, lets scrape this shit homie'

def scraper
  url = "https://www.apple.com"
  unparsed = HTTParty.get(url)
  parsed = Nokogiri::HTML(unparsed)
  parsed
  byebug
end

scraper
