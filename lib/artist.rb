class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@artists.length().+(1)
  end

  def name
    @name
  end

  def id
    @id
  end

  def save
    @@artists.push(self)
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_singleton_method(:find) do |id|
    found_artist = nil
    @@artists.each() do |artist|
      if artist.id().eql?(id)
        found_artist = artist
      end
    end
    found_artist
  end
end
