require('rspec')
require('artist')

describe('Artist') do
  before() do
    Artist.clear()
  end

  describe('#name') do
    it("returns the name of the artist") do
      test_artist = Artist.new("Nirvana")
      expect(test_artist.name()).to(eq("Nirvana"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds an artist to the array of saved artists') do
      test_artist = Artist.new('Nirvana')
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end
end
