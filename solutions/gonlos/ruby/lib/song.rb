class Song
  VERSES = 100
  def self.sing(verse = nil)
    if verse.nil?
      (1..100).map{|i|verse(VERSES - i)}.join("\n\n")
    else
      index = VERSES - verse
      verse(index) unless verse.nil?
    end
  end

  def self.verse(bottles)
    take_one = (bottles < 1)? "Go to the store and buy some more" : "Take one down and pass it around"
      "#{bottles_of_bear(bottles).capitalize} on the wall, #{bottles_of_bear(bottles)}.\n#{take_one}, #{bottles_of_bear(bottles - 1)} on the wall."
  end

  def self.bottles_of_bear(index)
    return 'no more bottles of beer' if index == 0
    plural = index == 1 ? '' : 's'
    index = 99 if index < 0
    "#{index} bottle#{plural} of beer"
  end
end
