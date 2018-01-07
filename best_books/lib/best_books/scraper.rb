class BestBooks::Scraper

  def get_page
    doc = Nokogiri::HTML(open("https://www.amazon.com/charts"))
  end

  def scrape_main_chart
    self.get_page.css(".kc-rank-card-title").text.lstrip.gsub(/[\n]/,"").rstrip
  end

  def make_books

  end
end
