require_relative 'add_book'
require_relative 'library'

puts "Library Card Catalog..."
puts "What would you like to do?"
puts "1  List all books in the catalog"
puts "2  Search for a title in the catalog"
puts "3  Add a book"
input = gets.chomp
    
if input == '1'
  lib = MyLibrary.new
  lib.read_all
elsif input == '2'
  lib = MyLibrary.new
  lib.search_title
elsif input == '3'
  book = Book.new
  library = "./library_db.xml"
  doc = Nokogiri::XML(File.open(library))

  book.set_book_details
  doc.root.add_child(book.new_book($title, $author,  $subject, $location))

  File.write(library, doc.to_xml)
else
  puts "Error: invalid choice. Run again and select item number"
end
