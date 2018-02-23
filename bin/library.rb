require 'nokogiri'
require 'builder'

class MyLibrary
  
  def initialize
    filename = "./library_db.xml"
    @doc = Nokogiri::XML(File.open(filename))
  end

  def read_all
    @doc.xpath('//book').each do |abook|
      puts "Title    = " + abook.at_xpath('title').content
      puts "Author   = " + abook.at_xpath('author').content
      puts "Subject  = " + abook.at_xpath('subject').content
      puts "Location = " + abook.at_xpath('location').content
      puts
    end
  end
  
  def search
    puts "Which book are you looking for?"
    answer = gets.chomp
    
    @doc.xpath('//book').each do |abook|
      title = abook.at_xpath('title').content
      if title == answer
        puts
        puts "Title    = " + title
        puts "Author   = " + abook.at_xpath('author').content
        puts "Location = " + abook.at_xpath('location').content
        puts
        break
      end
    end
  end

end