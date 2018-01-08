require "pry"
require 'nokogiri'
require 'open-uri'

class BestBooks::Scraper

  def self.get_page
    doc = Nokogiri::HTML(open("https://www.amazon.com/charts"))
  end

  def self.get_books
    self.get_page.css(".kc-horizontal-rank-card")
  end

  def  self.make_books
    self.get_books.each do |book|
      text=BestBooks::Book.new
      text.title=book.css(".kc-rank-card-title").text.lstrip.gsub(/[\n]/,"").rstrip
      text.author=book.css(".kc-rank-card-author").text.gsub(/[\n]/,"")
      text.reviews=book.css(".numeric-star-data small").first.text
      text.weeks_on_list=book.css(".kc-wol").text
      text.profile_url=book.css(".icons .see-in-store").attribute("href").value
      text.read_sample=book.css(".icons .read").attribute("href").value
      text.summary=book.css(".kc-data-story-text-container p").first.text
    end
  end
end
