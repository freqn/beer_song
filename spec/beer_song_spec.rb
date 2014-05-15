require 'beer_song'

RSpec.describe BeerSong do
  let(:beer_song) { BeerSong.new }

  describe "#verse" do
    it "can sing a specific verse" do
      expect(beer_song.verse(8)).to eq("8 bottles of beer on the wall, 8 bottles of beer.\nTake one down and pass it around, 7 bottles of beer on the wall.\n")

    end

    it "can sing another specific verse" do
      expect(beer_song.verse(7)).to eq("7 bottles of beer on the wall, 7 bottles of beer.\nTake one down and pass it around, 6 bottles of beer on the wall.\n")
    end

    it "can sing the second to last verse" do
      expect(beer_song.verse(2)).to eq("2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n")
    end

    it "can sing the next to last verse" do
      expect(beer_song.verse(1)).to eq("1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n")
    end

    it "can sing the last verse" do
      expect(beer_song.verse(0)).to eq("No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n")
    end
  end

  describe "#verses" do
    it "sings all the verses between two numbers" do
      expected = "8 bottles of beer on the wall, 8 bottles of beer.\nTake one down and pass it around, 7 bottles of beer on the wall.\n\n7 bottles of beer on the wall, 7 bottles of beer.\nTake one down and pass it around, 6 bottles of beer on the wall.\n\n6 bottles of beer on the wall, 6 bottles of beer.\nTake one down and pass it around, 5 bottles of beer on the wall.\n\n"
      expect(beer_song.verses(8,6)).to eq(expected)
    end
  end

  describe "#sing" do
    it "sings all the verses" do
      expect(beer_song.sing).to eq(beer_song.verses(99,0))
    end
  end
end
