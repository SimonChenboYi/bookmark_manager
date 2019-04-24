require 'bookmarks'

RSpec.describe Bookmarks do

  describe '.all' do
    it 'returns an array of bookmark' do
      add_instag
      add_youtube
      add_google
      bookmarks = Bookmarks.all
      expect(bookmarks.length).to eq(3)
      expect(bookmarks.first.title).to eq('INSTAG')
      expect(bookmarks[1].url).to eq("www.youtube.com")
    end
  end

  describe '.create' do

    it 'creates a new bookmark' do
      bookmark = Bookmarks.create('Test Bookmark', 'http://www.testbookmark.com')
      persisted_data = persisted_data(bookmark.id)
      
      expect(bookmark).to be_a Bookmarks
      expect(bookmark.id).to eq persisted_data["id"]
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end

    it 'add the new bookmark into list' do
      add_instag
      add_youtube
      add_google

      Bookmarks.create("Facebook", "www.facebook.com")

      bookmarks = Bookmarks.all
      expect(bookmarks.length).to eq(4)
      expect(bookmarks.last.url).to eq("www.facebook.com")
    end
  end

end
