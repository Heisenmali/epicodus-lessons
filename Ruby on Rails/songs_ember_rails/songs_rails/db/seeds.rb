class Seed

  def self.begin
    seed = Seed.new
    seed.generate_songs
  end

  def generate_songs
    20.times do |i|
      song = Song.create!(
        artist: Faker::RockBand.name,
        title: Faker::ChuckNorris.fact
      )

      5.times do |i|
        song.reviews.create!(
          author: Faker::RockBand.name,
          content: Faker::Hipster.sentence,
        )
      end
    end
  end
end
puts "DONE RAN THE SEEEEED"
Seed.begin
