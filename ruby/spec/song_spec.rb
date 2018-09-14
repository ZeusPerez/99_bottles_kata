require 'rspec'

describe Song do
  let(:song) { File.read("spec/full_song.txt") }

  it "sings the complete song" do
    expect(Song.sing).to eq song
  end
end
