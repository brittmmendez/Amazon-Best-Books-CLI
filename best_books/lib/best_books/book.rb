require "pry"
require 'nokogiri'
require 'open-uri'

class BestBooks::Book
  attr_accessor :title, :author, :reviews, :weeks_on_list, :profile_url, :price, :quote, :summary

  @@books=[]

  def  self.scraper
    doc = Nokogiri::HTML(open("https://www.amazon.com/charts"))

    doc.css(".kc-horizontal-rank-card").each do |book|
      title=book.css(".kc-rank-card-title").text.lstrip.gsub(/[\n]/,"").rstrip
      author=book.css(".kc-rank-card-author").text.gsub(/[\n]/,"")
      reviews=book.css(".numeric-star-data small").first.text
      weeks_on_list=book.css(".kc-wol").text
      summary=book.css(".kc-data-story-text-container p").text
      profile_url=book.css(".icons .see-in-store").attribute("href").value

      BestBooks::Book.new(title, author, reviews, weeks_on_list, summary, profile_url)
      end
  end

  def initialize(title=nil, author=nil, reviews=nil, weeks_on_list=nil, summary=nil,profile_url=nil)
    @title=title
    @author=author
    @reviews=reviews
    @weeks_on_list=weeks_on_list
    @summary=summary
    @profile_url=profile_url

    save
  end

  def self.all
    @@books
  end

   def save
     @@books<<self
   end

end
