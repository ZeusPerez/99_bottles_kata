require 'spec_helper'

describe Song do
  let(:song) { File.read('spec/full_song.txt') }
  let(:verses) { song.split("\n\n") }

  it 'sings the complete song' do
    expect(Song.sing).to eq song
  end

  it 'sing the correct verse' do
    expect(Song.sing(1)).to eq verses[0]
    expect(Song.sing(2)).to eq verses[1]
    expect(Song.sing(98)).to eq verses[97]
    expect(Song.sing(99)).to eq verses[98]
    expect(Song.sing(100)).to eq verses[99]
  end
end
