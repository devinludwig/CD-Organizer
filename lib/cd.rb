class Compact_disk
  @@disks = []

  define_method(:initialize) do |title, artist|
    @title = title
    @artist = artist
  end

  def save
    @@disks.push(self)
  end

  def artist
    @artist
  end

  define_singleton_method(:clear) do
    @@disks = []
  end

  define_method(:title) do
    @title
  end

  define_singleton_method(:all) do
    @@disks
  end

  define_singleton_method(:group) do |album_artist|
    albums = []
    @@disks.each() do |disk|
      if disk.artist().eql?(album_artist)
        albums.push(disk.title())
      end
    end
    albums
  end
end
