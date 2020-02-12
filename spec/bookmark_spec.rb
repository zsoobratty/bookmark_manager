require "bookmark"

describe Bookmark do

  describe ' #all' do
    it 'should return bookmarks list' do

      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '#create' do
    it 'adds a bookmark to database' do
      bookmarks = Bookmark.create('https://www.github.com')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('https://www.github.com')
    end
  end

end