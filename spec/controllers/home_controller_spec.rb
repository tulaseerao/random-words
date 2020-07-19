require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET index' do
    before do
      @words = create_list(:word, 10)
      get :index
    end
    subject { get :index }

    it 'renders the application layout' do
      expect(subject).to render_template('layouts/application')
    end

    it 'status 200' do
      expect(subject.status).to eq(200)
    end

    it 'assigns random word' do
      expect(assigns(:rand_word)).not_to eq nil
    end

    it_should_behave_like 'pick a random word' do
      let(:picked_word) { assigns(:rand_word) }
      let(:word_list) { @words.map(&:content) }
    end
  end
end
