class BeerSong
  def verse(num)
    first_phrase(num) + second_phrase(num)
  end

  def verses(start_count, end_count)
    (end_count..start_count).to_a.reverse.collect { |num| verse(num) }.join("\n") + "\n"
  end

  def sing
    verses(99,0)
  end

  private

  def bottles(num)
    if num == 1
      "1 bottle"
    elsif num == 0
      "no more bottles"
    elsif num == -1
      "99 bottles"
    else
      "#{num} bottles"
    end
  end

  def first_phrase(num)
    <<-EOR
#{bottles(num).capitalize} of beer on the wall, #{bottles(num)} of beer.
    EOR
  end

  def second_phrase(num)
    if num == 0
      first_part = "Go to the store and buy some more, "
    else
      first_part = "Take one down and pass it around, "
    end
    second_part = "#{bottles(num-1)} of beer on the wall.\n"
    return first_part + second_part
  end
end
