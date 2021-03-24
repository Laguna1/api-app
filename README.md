# README
Tom Kadwill RAILS 6 Api Tutorial
[Source][](https://www.youtube.com/playlist?list=PLbTv9eGiI03u1-JFkFpPGsR_hMre6WX3e)
part 1 - 10 (while only Book model exists)
- index books `curl http://locachost:3000/api/v1/books`
- add new book `curl --header "Content-Type: application/json" --request POST --data '{"title": "Your book title", "author": "Your book author"}' http://locachost:3000/api/v1/books`
- delete book `curl --header "Content-Type: application/json" --request DELETE http://locachost:3000/api/v1/books`

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
