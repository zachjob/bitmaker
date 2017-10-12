class Book
  @@on_shelf = []
  @@on_loan = []

  # Class Methods
  def self.create
    #code
  end

  def self.current_due_date
    #code
  end

  def self.overdue_books
    #code
  end

  def self.browse
    #code
  end

  def self.available
    #code
  end

  def self.borrowed
    #code
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
    #code
  end

end
