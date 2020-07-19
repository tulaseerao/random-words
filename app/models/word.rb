# This model keeps words content
class Word < ApplicationRecord
  def self.random_word
    order('RANDOM()').first&.content
  end
end
