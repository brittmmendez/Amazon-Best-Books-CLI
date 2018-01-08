class BestBooks::CLI
  def call
    BestBooks::Book.scraper #wanted this to be BestBooks::Scraper.make_books but couldn't get scraper.rb connected
    introduction
    list_books
    pick_book
    exit_cli
  end

  def introduction
    puts "- - - - - - - - - -Amazon Charts- - - - - - - - -"
    puts "The Top 20 Most Sold & Most Read Books of the Week"
    puts "- - - - - - -WEEK OF DECEMBER 31, 2017- - - - - -"
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
      puts "Type the number for the category that you would like to see the top apps for, type 'list' to see the categories again, or exit:"
      input=gets.strip.downcase

      if input.to_i>0
        book_pick=@books[input.to_i-1]
        puts ""
        puts "- - - - - - -Book Review- - - - - -"
        puts "Title:   #{book_pick.title}"
        puts "Author:#{book_pick.author}"
        puts "Rating:  #{book_pick.reviews}"
        puts ""
        puts "This book has spent #{book_pick.weeks_on_list}!"
        puts ""
        puts "Read free sample: #{book_pick.read_sample}"
        puts "Purchasing Options: https://www.amazon.com/#{book_pick.profile_url}"
        puts ""
        puts "Summary:"
        puts "#{book_pick.summary}"

      elsif input == "list"
         list_books

      else
        puts "Invalid number, Type the number for the book that you would like to see more information for, type 'list' to see the books again, or exit:"
      end
    end
  end

  def exit_cli
    puts "Thank you trying my Gem!  I hope you found a new book to read!"
  end

end
