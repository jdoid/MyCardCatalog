# MyCardCatalog
Simple Ruby project and XML database to track my books.  This is a project to work with Ruby and use XML as a database.  The initial user interface is a simple CLI. 

Interface and logic are in the initial stages of development.

## Getting Started


### Installation
Install the files from folder 'bin' to a directory on your server.
Initially the library_db.xml file is empty of book nodes.


### Usage
To run card catalog

$ ruby run_catalog.rb

![alt text](../master/doc/images/menu.png?raw=true)

Adding a book will prompt for title, author, subject, location.
Subject and location will show options to use.  Location implies where the book lives - digitally or physically. 

Currently a search is for title only and must be the complete title.


## License
MyCardCatalog is provided under the MIT License.
