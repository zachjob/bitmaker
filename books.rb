class Book
  @@on_shelf = []
  @@on_loan = []

  # Class Methods
  def self.create
    @@on_shelf << Book.new
    Book
  end

  def self.current_due_date
    #code
  end

  def self.overdue_books
    #code
  end

  def self.browse
    puts @@on_shelf.sample
  end

  def self.available
    @@on_shelf.each do |book|
      puts "#{@title} by #{@author}; ISBN: #{@isbn}"
    end
  end

  def self.borrowed
    @@on_loan.each do |book|
      puts "#{@title} by #{@author}; ISBN: #{@isbn}"
    end
  end


  # Instance Methods
  def initialize (title, author, isbn)
    # initialize a book's title, author, and isbn
    @title = title
    @author = author
    @isbn = isbn

  end

  def borrow
    #code
  end

  def return_to_library
    #code
  end

  def lent_out?
    @@on_loan.each do |book|
      if self == book
        puts "This book has been lent out."
      else
        puts "This book is available."
      end
    end
  end

end
