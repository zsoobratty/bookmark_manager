require "bookmark"

describe Bookmark do

  describe ' #all' do
    it 'should return bookmarks list' do

      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Learning code ting');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy the ting');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Find the tings');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("Learning code ting")
      expect(bookmarks).to include('Destroy the ting')
      expect(bookmarks).to include('Find the tings')
    end
  end

  describe '#create' do
    it 'adds a bookmark to database' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      
      bookmarks = Bookmark.create('https://www.github.com', 'That code place')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('That code place')
    end
  end

end