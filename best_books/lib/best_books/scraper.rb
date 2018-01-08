#require "pry"
#require 'nokogiri'
#require 'open-uri'

#class BestBooks::Scraper

#  def get_page
#    doc = Nokogiri::HTML(open("https://www.amazon.com/charts"))
#  end

#  def get_books
#    get_page.css(".kc-horizontal-rank-card")
#  end

#  def  self.make_book
#    get_books.each do |book|
#      title=book.css(".kc-rank-card-title").text.lstrip.gsub(/[\n]/,"").rstrip
#      author=book.css(".kc-rank-card-author").text.gsub(/[\n]/,"")
#      reviews=book.css(".numeric-star-data small").first.text
#      weeks_on_list=book.css(".kc-wol").text
#      profile_url=book.css(".icons .see-in-store").attribute("href").value
#      read_sample=book.css(".icons .read").attribute("href").value
#      summary=book.css(".kc-data-story-text-container p").first.text

#      BestBooks::Book.new(title, author, reviews, weeks_on_list, profile_url, read_sample, summary)
#    end
#  end
#end
