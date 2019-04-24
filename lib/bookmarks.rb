require 'pg'

class Bookmarks

  def self.all
    retrive_data
    @data.map { |row| row["url"] }
  end

  def self.retrive_data
    if ENV == 'test'
      connection = PG.connect(dbname: 'bookmark_manager')
    else
      connection = PG.connect(dbname: 'bookmark_manager_test')
    end
    @data = connection.exec("SELECT * FROM bookmarks") do |result|
      result.map { |row| row }
    end
  end
end
