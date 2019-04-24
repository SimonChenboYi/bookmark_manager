require 'pg'

class Bookmarks

  def self.all
    Bookmarks.retrive_data.map { |row| row["url"] }
  end

  def self.add(link)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{link}');")
  end

  def self.retrive_data

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec("SELECT * FROM bookmarks") do |result|
      result.map { |row| row }
    end
  end
end
