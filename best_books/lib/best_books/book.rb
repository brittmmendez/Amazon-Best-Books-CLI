require "pry"
require 'nokogiri'
require 'open-uri'

class BestBooks::Book
  attr_accessor :title, :author, :reviews, :weeks_on_list, :profile_url, :price, :quote, :summary

  @@books=[]

  def  self.practice
    ##this can be deleted once scraper works
    book1=self.new(title="Title Name Book 1", author="author Name", reviews="review goes here", weeks_on_list="5 weeks on list", summary="this book is about",profile_url="www....")
    book2=self.new(title="Title Name Book 2", author="author Name", reviews="review goes here", weeks_on_list="5 weeks on list", summary="this book is about",profile_url="www....")
    book3=self.new(title="Title Name Book 3", author="author Name", reviews="review goes here", weeks_on_list="5 weeks on list", summary="this book is about",profile_url="www....")
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
