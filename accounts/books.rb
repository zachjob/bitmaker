class Book
  @@on_shelf = []
  @@on_loan = []

  # Instance Methods
  def initialize (title, author, isbn)
    # initialize a book's title, author, and isbn
    @title = title
    @author = author
    @isbn = isbn
    @due_date = nil

  end

  # Readers
  def due_date
    @due_date
  end

  def title
    @title
  end

  def author
    @author
  end

  def isbn
    @isbn
  end

  def self.borrow
    if self.lent_out? == "This book is available."
      self.current_due_date = Time.now
      @@on_loan << self
      @@on_shelf -= self
    else
      puts "This book has been lent out."
    end
  end

  def return_to_library
    if self.lent_out? == "This book is available."
      puts "This book has not been lent out."
    else
      self.current_due_date = nil
      @@on_shelf << self
      @@on_loan -= self
    end
  end

  # Class Methods
  def self.create (title, author, isbn)
    @@on_shelf << Book.new(title, author, isbn)
    return self
  end

  def self.lent_out?
    @@on_loan.each do |book|
      if self == book
        "This book has been lent out."
      else
        "This book is available."
      end
    end
  end

  def self.current_due_date

  end

  def self.overdue_books
    puts "Overdue Books:"
    @@on_loan.each do |book|
      if Time.now >= @due_date
        puts "-#{@title} by #{@author}; ISBN: #{@isbn}"
      end
    end
  end

  def self.browse
    puts @@on_shelf.sample
  end

  def self.available
    @@on_shelf.each do |book|
      puts "#{book.title} by #{book.author}; ISBN: #{book.isbn}"
    end
  end

  def self.borrowed
    @@on_loan.each do |book|
      puts "#{@title} by #{@author}; ISBN: #{@isbn}"
    end
  end

end

sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.browse.inspect # #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.browse.inspect # #<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307"> (this value may be different for you)
puts Book.available.inspect # [#<Book:0x00555e82acde20 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431">, #<Book:0x00555e82acdce0 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00555e82acdab0 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
puts Book.borrowed.inspect # []
puts sister_outsider.lent_out? # false
puts sister_outsider.borrow # true
puts sister_outsider.lent_out? # true
puts sister_outsider.borrow # false
puts sister_outsider.due_date # 2017-02-25 20:52:20 -0500 (this value will be different for you)
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
puts Book.borrowed.inspect # [#<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=2017-02-25 20:55:17 -0500>]
puts Book.overdue.inspect # []
puts sister_outsider.return_to_library # true
puts sister_outsider.lent_out? # false
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">, #<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=nil>]
puts Book.borrowed.inspect # []
