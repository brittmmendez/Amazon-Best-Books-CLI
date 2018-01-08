class BestBooks::Book
  attr_accessor :title, :author, :reviews, :weeks_on_list, :profile_url,:read_sample, :summary

  @@books=[]

#  def  self.scraper
#    doc = Nokogiri::HTML(open("https://www.amazon.com/charts"))
#
#    doc.css(".kc-horizontal-rank-card").each do |book|
#      text=BestBooks::Book.new
#      text.title=book.css(".kc-rank-card-title").text.lstrip.gsub(/[\n]/,"").rstrip
#      text.author=book.css(".kc-rank-card-author").text.gsub(/[\n]/,"")
#      text.reviews=book.css(".numeric-star-data small").first.text
#      text.weeks_on_list=book.css(".kc-wol").text
#      text.profile_url=book.css(".icons .see-in-store").attribute("href").value
#      text.read_sample=book.css(".icons .read").attribute("href").value
#      text.summary=book.css(".kc-data-story-text-container p").first.text
#    end
#  end

  def initialize
    @@books<<self
  end

  def self.all
    @@books
  end

end
