require 'pg'

class Bookmarks
  attr_reader :id, :title, :url

  def initialize(id, title, url)
    @id = id
    @title = title
    @url = url
  end

  def self.create(title, url)
    connection = env
    result = connection.exec("INSERT INTO bookmarks (title, url)
    VALUES('#{title}', '#{url}') RETURNING id, title, url;")
    Bookmarks.new(result[0]['id'], result[0]['title'], result[0]['url'])
  end

  def self.all
    connection = env
    connection.exec("SELECT * FROM bookmarks") do |result|
      result.map { |bookmark|
        Bookmarks.new(bookmark['id'],
          bookmark['title'], bookmark['url'])
      }
    end
  end

  def self.env
    env_test = (ENV['ENVIRONMENT'] == 'test')
    return PG.connect(dbname: 'bookmark_manager') unless env_test

    PG.connect(dbname: 'bookmark_manager_test')
  end
end
