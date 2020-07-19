# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Stranger Things' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Read words from words_alpha.txt which is copy from provided git link.
words = File.readlines('db/words_alpha.txt')

# Generate Array of array words for Active record import gem and strips out \n char.
words = words.map do |word|
  [word.strip]
end

# Single insert of db records using `activerecord-import` gem
Word.import [:content], words, validate: false
