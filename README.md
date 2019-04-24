# Bookmark Manager

## User Story 1

```
As a user
So that I can select a bookmark
I would like a list of my bookmarks
```

### Domain Model

![Screenshot 2019-04-23 at 14 16 40](https://user-images.githubusercontent.com/44544977/56584109-f46f8e80-65d2-11e9-9e8a-1277510bf339.png)

## Database set-up

- `$ brew install postgresql` Will install the neccesary files for a postgres server
- `$ brew services start postgresql` Will start the postgres server and set the postgres server to automatically start when macOS starts.
- `$ createdb bookmark_manager` will create a new postgres database call 'bookmark_manager'
- `$ psql bookmmark_manager` to connect to database
- `bookmmark_manager=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));` will create a new table with 2 columns, 'id' set as the primary key and 'url'
- Execute SQL queries in order in db/migrations folder


## User Story 1

```
As a user
So that I can manipulate bookmarks
I would like add a new bookmarks
```
