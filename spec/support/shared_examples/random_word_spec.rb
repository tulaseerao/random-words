shared_examples_for 'pick a random word' do
  it 'picked random word from inserted list' do
    expect(word_list.include?(picked_word)).to be true
  end
end
