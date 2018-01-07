class BestBooks::CLI
  def call
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
    @books=BestBooks::Book.today
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
        puts "#{book_pick.title}"
        puts "#{book_pick.author}"
        puts "#{book_pick.reviews}"
        puts "#{book_pick.weeks_on_list}"
        puts "#{book_pick.price}"
        puts "#{book_pick.quote}"
        puts "For a complete summary and purchasing optiosn, go to https://www.amazon.com/#{book_pick.profile_url}"
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
