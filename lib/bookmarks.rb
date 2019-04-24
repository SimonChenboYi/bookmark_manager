require 'pg'

class Bookmarks

  def initialize(data = nil)
    @data = data
  end

  def all
    retrive_data
    @data.map { |row| row["url"] }
  end

  private

  def retrive_data
    connection = PG.connect(dbname: 'bookmark_manager')
    @data = connection.exec("SELECT * FROM bookmarks") do |result|
      result.map { |row| row }
    end
  end
end
