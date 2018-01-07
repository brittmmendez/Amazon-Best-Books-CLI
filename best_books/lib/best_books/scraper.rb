require "pry"
require 'nokogiri'
require 'open-uri'

class BestBooks::Scraper

  def get_page
    #go to amazon chart
    doc = Nokogiri::HTML(open("https://www.amazon.com/charts"))
    binding.pry
  end

  def get_books
    #extract the properties
    self.get_page.css(".kc-vertical-rank-container")
  end

  def make_books
    #iterate through and instantiate
    self.get_books.each do |book|
    BestBooks::Book.new_from_charts(book)
  end
end
end
