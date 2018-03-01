require 'nokogiri'
require 'builder'
require 'pp'

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
  
  def search_title
    # Searches 'title' at the time
    puts
    puts "Which book are you looking for (case sensitive)?"
    answer = gets.chomp
    
    request_title = answer.split(' ')
    i = 0
    hash_request = Hash[request_title.collect { |item| [i += 1, item] } ]
    
    # Report all possible title matches.
    # Basically you request a sequence of words and result is all potential 
    # title matches.
    #  
    # ToDo = rank best match at top
    #
    @doc.xpath('//book').each do |abook|
      
      title = abook.at_xpath('title').content
      search_title = title.split(' ')
      
      # may use this hash in the future
      #hash_title = Hash[search_title.collect { |item| [i += 1, item] } ]
      
      word_count = 0
      search_title.each do |word| 
        if hash_request.value?(word) 
          word_count += 1
        end
      end
      
      if word_count >= 1
        puts
        puts "Title    = " + abook.at_xpath('title').content
        puts "Author   = " + abook.at_xpath('author').content
        puts "Location = " + abook.at_xpath('location').content
        puts
      end
    end
  end
  
end