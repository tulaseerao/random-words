class HomeController < ApplicationController
  def index
    @rand_word = Word.random_word

    respond_to do |format|
      format.html
      format.js
    end
  end
end
