require 'bookmarks'

RSpec.describe Bookmarks do
  let(:bookmark) { described_class.new }
  describe '#list' do
    it 'returns an array of bookmark' do
      expect(bookmark.list).to eq(['www.google.com', 'www.youtube.com', 'www.instagram.com'])
    end
  end
end
