# spec/models/word_spec.rb

require 'rails_helper'

RSpec.describe Word, type: :model do
  describe '.random_word' do
    subject { Word.random_word }

    it 'nil when no words' do
      expect(subject).to be nil
    end

    context 'random word from list' do
      before do
        @words = create_list(:word, 10)
      end

      it 'picks random word' do
        expect(subject).not_to be nil
      end

      it_should_behave_like 'pick a random word' do
        let(:picked_word) { subject }
        let(:word_list) { @words.map(&:content) }
      end
    end
  end
end
