class Movie
  attr_accessor :title, :main_character, :rating
  def initialize(title, main_character, rating)
    @title = title
    @main_character = main_character
    @rating = rating #ratings from rotton tomatoes score 1%-100%
  end

  def score
    if rating >= 75
      return "fresh"
    else
      return "rotten"
    end
  end

  def quote
    puts "#{main_character} stars in #{title}, which has a rating of #{rating} on Rotten Tomatoes, making it certified #{score}."
  end

end

movie1 = Movie.new("Spider-Man (2002)", "Peter Parker", 90)
print movie1.quote
movie2 = Movie.new("Bee Movie", "Barry the Bee", 50)
print movie2.quote