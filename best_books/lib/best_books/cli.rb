class BestBooks::CLI
  def call
    #BestBooks::Book.scraper #used this when BestBooks::Book.scraper was active
    BestBooks::Scraper.make_books
    introduction
    list_books
    pick_book
    exit_cli
  end

  def introduction
    puts "- - - - - - - - - -Amazon Charts- - - - - - - - -"
    puts "The Top 20 Most Sold & Most Read Books of the Week"
    puts ""
  end

  def list_books
    @books=BestBooks::Book.all
    @books.each.with_index(1) do |book,index|
      puts "#{index}.  #{book.title}"
    end
  end

  def pick_book
    input =""
    while input != "exit"
      puts ""
      puts "Type the number for the book that you would like to see more information on, type 'list' to see the categories again, or exit:"
      input=gets.strip.downcase

      if input == "list"
        list_books

      elsif input.to_i>20
        puts "---Invalid number---"

        elsif input.to_i>0
        book_pick=@books[input.to_i-1]
        puts ""
        puts "- - - - - - -#{book_pick.title}- - - - - -"
        puts ""
        puts "This book has spent #{book_pick.weeks_on_list}!"
        puts ""
        puts "Author:            #{book_pick.author}"
        puts "Rating:              #{book_pick.reviews}"
        puts "Read sample:         #{book_pick.read_sample}"
        puts "Audible sample:      #{book_pick.audible_sample}"
        puts "Purchasing Options:  https://www.amazon.com/#{book_pick.profile_url}"
        puts ""
        puts "- - - - - - - - - Summary - - - - - - - -"
        puts "#{book_pick.summary}"
        puts ""
      end
    end
  end

  def exit_cli
    puts "Thank you trying my Gem!  I hope you found a new book to read!"
  end

end
