require "sinatra"
require "sinatra/reloader"
require "./lib/tamagotchi"
require "pry"

also_reload("lib/**/*.rb")


$new_tamagotchi = Tamagotchi.new

get("/") do
  $new_tamagotchi = Tamagotchi.new
  @message = "congratulations! you are now responsible for this tamagotchi!"
  erb(:index)
end



get("/feed") do
  $new_tamagotchi.stomach.eat
  if $new_tamagotchi.alive?
    @message = "you fed your tamagotchi! It is #{$new_tamagotchi.stomach.state}"
    erb(:index)
  else
    @message = "... it's dead. you overfed it. how does that make you feel?"
    erb(:dead)
  end
end

get("/play") do
  $new_tamagotchi.play.delight
  if $new_tamagotchi.alive?
    @message = "you played with your tamagotchi! It is #{$new_tamagotchi.play.state}"
    erb(:index)
  else
    @message = "... it's dead. you played with it too much. how does that make you feel?"
    erb(:dead)
  end
end

get("/nap") do
  $new_tamagotchi.rest.slumber
  if $new_tamagotchi.alive?
    @message = "you slept on your tamagotchi! It is #{$new_tamagotchi.rest.state}"
    erb(:index)
  else
    @message = "... it's dead. you sleep deprived it. how does that make you feel?"
    erb(:dead)
  end
end
