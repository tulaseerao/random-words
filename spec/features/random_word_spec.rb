require 'rails_helper'

RSpec.feature 'Random Word' do
  before do
    visit root_path
  end
  scenario 'pick no random word' do
    click_link 'Random word'
    random_text = page.find('#rand_word').text
    expect(random_text).to eq ''
  end

  context 'when some words' do
    before do
      @words = create_list(:word, 10)
      @word_list = @words.map(&:content)
      visit root_path
    end

    scenario 'pick a random word' do
      click_link 'Random word'
      random_text = page.find('#rand_word').text
      expect(@word_list.include?(random_text)).to be true
    end
  end
end
