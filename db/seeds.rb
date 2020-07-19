# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Stranger Things' }])
#   Character.create(name: 'Luke', movie: movies.first)

words = File.readlines('db/words_alpha.txt')
words = words.map do |word|
  [word.strip]
end

Word.import [:content], words, validate: false
