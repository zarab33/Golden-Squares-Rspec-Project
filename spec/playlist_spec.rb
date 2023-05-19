require 'playlist'

RSpec.describe Playlist do
    context "Given no tracks" do
        it "Raises an error message" do
            playlist = Playlist.new
            expect { playlist.view_track }.to raise_error "No tracks are added"
        end
    end

    describe "#add_tracks" do
        context "Given a track its added to the playlist." do
            it "Returns playlist." do
                playlist = Playlist.new
                playlist.add_track("Shea Butter Baby")
                expect(playlist.view_track).to eq ["Shea Butter Baby"]
            end
        end

        context "Given multiple tracks its added to the playlist." do
            it "Returns playlist." do
                playlist = Playlist.new
                playlist.add_track("Shea Butter Baby")
                playlist.add_track("Pressure")
                playlist.add_track("If I ruled the world")
                expect(playlist.view_track).to eq ["Shea Butter Baby", "Pressure", "If I ruled the world"]
            end
        end
    end
end


