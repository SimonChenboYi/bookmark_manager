def add_instag
  Bookmarks.create('INSTAG', 'www.instagram.com')
end

def add_facebook
  Bookmarks.create('Facebook', 'www.facebook.com')
end

def add_google
  Bookmarks.create('Google', 'www.google.com')
end

def add_youtube
  Bookmarks.create('Youtube', 'www.youtube.com')
end

def persisted_data(id)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
