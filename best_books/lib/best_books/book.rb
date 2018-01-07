require "pry"
require 'nokogiri'
require 'open-uri'

class BestBooks::Book
attr_accessor :title, :author, :reviews, :weeks_on_list, :profile_url, :price, :quote

def self.today
      book1=self.new
      book1.title="book1"
      book1.author="this is some name"
      book1.reviews="this is a review"
      book1.weeks_on_list="this is a weeks_on_list"
      book1.profile_url="this is a profile_url"
      book1.price="this is a price"
      book1.quote="this is a quote"
      book2=self.new
      book2.title="book2"
      book2.author="this is some name"
      book2.reviews="this is a review"
      book2.weeks_on_list="this is a weeks_on_list"
      book2.profile_url="this is a profile_url"
      book2.price="this is a price"
      book2.quote="this is a quote"
      [book1,book2]
  end

#def self.new_from_charts(book)
#  self.new(title, author, reviews, weeks_on_list, profile_url, summary, price, quote)
#end

#def initialize(title=nil, author=nil, reviews=nil, weeks_on_list=nil, profile_url=nil, summary=nil)
#  @title=title
##  @author=author
#  @reviews=reviews
#  @weeks_on_list=weeks_on_list
#  @profile_url=profile_url
#  @@all<<self
#end

#def doc
#  url="https://www.amazon.com/#{self.profile_url}"
#  doc = Nokogiri::HTML(open(url))
#end

#def  price
#  @price=nil
#end

#def  quote
#  @quote=nil
#end

end
