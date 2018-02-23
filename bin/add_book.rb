require 'nokogiri'
require 'builder'

class Book
  
  def new_book(title, author, subject, location)
    xml = Builder::XmlMarkup.new( :indent => 2 )
    #xml.instruct! :xml, :encoding => "ASCII"
    @title = title
    @author = author
    @subject = subject
    @location = location
  
    xml.book do |lib|
      lib.title "#{@title}"
      lib.author "#{@author}"
      lib.subject "#{@subject}"  
      lib.location "#{@location}"
    end
  end
  
  def set_book_details
    puts "Would you like to add a book [Y|N]?"
    answer = gets.chomp
    
    if answer == "Y"
      puts "Title : "
      $title = gets.chomp
      
      puts "Author : "
      $author = gets.chomp
      
      puts "Subject [Fiction | Nonfiction] : "
      $subject = gets.chomp
      
      puts "Book Location [Amazon | Google | Logos | Local Digital | Shelf] : "
      $location = gets.chomp
    else
      exit(0)
    end
  end

end