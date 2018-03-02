# MyCardCatalog
Simple Ruby project and XML database to track my books.  This is a project to work with Ruby and use XML as a database.  The initial user interface is a simple CLI. 


## Getting Started


### Installation
Install the files from folder 'bin' to a directory on your server.
Initially the library_db.xml file is empty of book nodes.


### Usage
To run card catalog

$ ruby run_catalog.rb

![alt text](../master/doc/images/menu.png?raw=true)

#### Searching Book by Title
Menu selection 2 prompts for a book title.  Type in the exact title or any sequence of words to report all possible title matches.
The search is currently case sensitive.

![alt text](../master/doc/images/menu_2.png?raw=true)

#### Adding Book to Catalog
Menu selection 3 will prompt for title, author, subject, location.
Subject and location will show options to use.
Location implies where the book lives - digitally or physically. 

![alt text](../master/doc/images/menu_3.png?raw=true)

## Futures
- GUI along with current CLI
- Rank the search matches
- Additional attributes for book
- Additional search types

## License
MyCardCatalog is provided under the MIT License.
