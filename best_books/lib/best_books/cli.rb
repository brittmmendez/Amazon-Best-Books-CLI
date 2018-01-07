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

  end

  def pick_book
    input =""
    while input != "exit"
      puts "Type the number for the category that you would like to see the top apps for, type 'list' to see the categories again, or exit:"
      input=gets.strip.downcase

      case input
      when "1"
        puts "book 1 is about xyz"
      when "2"
        puts "book 2 is about xyz"
      when "list"
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
