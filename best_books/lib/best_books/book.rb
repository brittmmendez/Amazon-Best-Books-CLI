require "pry"
require 'nokogiri'
require 'open-uri'

class BestBooks::Book
  attr_accessor :title, :author, :reviews, :weeks_on_list, :profile_url, :price, :quote

  @@books=[]

  def  self.practice
    book1=self.new(title="Title Name", author="author Name", reviews="review goes here", weeks_on_list="5 weeks on list", summary="this book is about",profile_url="www....")
  end

  def initialize(title=nil, author=nil, reviews=nil, weeks_on_list=nil, summary=nil,profile_url=nil)
    @title=title
    @author=author
    @reviews=reviews
    @weeks_on_list=weeks_on_list
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
