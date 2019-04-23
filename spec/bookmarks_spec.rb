require 'bookmarks'

RSpec.describe Bookmarks do
  let(:bookmark) { described_class.new }
  describe '#all' do
    it 'returns an array of bookmark' do
      expect(bookmark.all).to eq(['www.google.com', 'www.youtube.com', 'www.instagram.com'])
    end
  end
end
