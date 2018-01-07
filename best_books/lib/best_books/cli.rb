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
    puts ""
  end

  def list_books
    puts "1.  book 1"
    puts "2.  book 2"
    puts "3.  book 3"
    puts "4.  book 4"
    puts "5.  book 5"
    puts "6.  book 6"
    puts "7.  book 7"
    puts ""
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
      when "3"
        puts "book 3 is about xyz"
      when "4"
        puts "book 4 is about xyz"
      when "5"
        puts "book 5 is about xyz"
      when "6"
        puts "book 6 is about xyz"
      when "7"
        puts "book 7 is about xyz"
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
