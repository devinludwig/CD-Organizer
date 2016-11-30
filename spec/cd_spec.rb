require('rspec')
require('cd')

describe('Compact_disk') do
  before() do
    Compact_disk.clear()
  end

  describe('#title') do
    it("returns the title of the CD") do
      test_disk = Compact_disk.new("Nevermind")
      expect(test_disk.title()).to(eq("Nevermind"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Compact_disk.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a cd to the array of saved cds') do
      test_disk = Compact_disk.new('Nevermind')
      test_disk.save()
      expect(Compact_disk.all()).to(eq([test_disk]))
    end
  end
end
