class Playlist

  def initialize
    @tracks = []

  end

  def add_track(tracks)
    @tracks << tracks

  end

  def view_track
    if @tracks.empty?
        raise "No tracks are added"
    end
    return @tracks

  end
end