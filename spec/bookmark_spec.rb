require "bookmark"

describe Bookmark do

  describe ' #list' do
    it 'should return hard coded bookmarks list' do
      expect(described_class.all).to include("http://www.makersacademy.com")
      expect(described_class.all).to include("http://www.destroyallsoftware.com")
      expect(described_class.all).to include("http://www.google.com")
    end
  end
end