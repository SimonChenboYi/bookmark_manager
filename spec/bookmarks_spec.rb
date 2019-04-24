require 'bookmarks'

RSpec.describe Bookmarks do

  describe '#self.all' do
    it 'returns an array of bookmark' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.instagram.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.youtube.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.google.com');")

      expect(Bookmarks.all).to eq(["www.instagram.com", "www.youtube.com", "www.google.com"])
    end
  end

  describe '#self.add' do
    it 'returns an array of bookmark' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.instagram.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.youtube.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.google.com');")

      Bookmarks.add("www.facebook.com")
      expect(Bookmarks.all).to eq(["www.instagram.com", "www.youtube.com", "www.google.com", "www.facebook.com"])
    end
  end

end
