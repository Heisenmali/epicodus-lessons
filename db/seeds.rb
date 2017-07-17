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
    end
  end
end
puts "DONE RAN THE SEEEEED"
Seed.begin
