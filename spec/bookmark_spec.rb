require "bookmark_storage"

describe Bookmark do

  describe ' #list' do
    it 'should return hard coded bookmarks list' do
      expect(described_class.all).to include("http://www.destroyallsoftware.com")
    end
  end
end