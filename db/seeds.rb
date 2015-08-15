# Seed the RottenPotatoes DB with some movies.
movie_count=250
review_count=20
movie_ids = []
movie_count.times do |i|
  time=Time.now
  movie = Movie.create!(:title => "Movie_#{i}", :release_date => time, :rating => "G")
  puts "#{i} movies created"
  movie_ids << movie.id
end

movie_count.times do |i|
 puts("Number of reviews of created is : #{review_count*i}")
  goer = Moviegoer.create!(:name => "Person_#{i}")
  review_count.times do |j|
    movie_id = movie_ids[(i+j) % movie_count] #should give each number of movies an equal number of reviews
    Review.create!(:movie_id => movie_id, :moviegoer_id => goer.id, :potatoes => 3)
  end
end


