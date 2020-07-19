
# README
Random Word Picker from .txt file
=================================
1.	A simple web interface that shows a button and on click of that - displays a random word.
2.	Random word should be from the [word list](https://github.com/dwyl/english-words/blob/master/words_alpha.txt) and print it out on the web interface. 
3.	Write tests to exercise your code.  

### Tech Specs

  - Ruby 2.7.1 / Rails 6.0.3.2
  - PostgreSQL - 10.13
  - Rspec + Rubocop
  - Activerecord Import(activerecord-import)

### Environment Variables
   Uses dot env gem and create a .env/.env.development.local file in root folder

   - DATABASE_URL - Database URL (local: postgres://localhost:5432)
   - DATABASE - Datebase name

### Setup on Mac OSX
   -  `brew install postgresql` (unless you already have it)
   -  `rvm install 2.7.1`
   -  `bundle install`
   -  `rails db:setup`
   -  `bundle exec rails s`
  Visit http://localhost:3000

### Testing
   - `rails db:setup`
   - `bundle exec rspec`

### Code Quality (Local)
   - `rubocop`



 
