Post.destroy_all
Component.destroy_all

post = Post.create(author: 'nkls', title: 'Beer and Peanuts', teaser: 'Learning how to climb, training to become a better climber and continuing to grind along the slow road of self-improvement was and still is one of the greatest social adventures of my life.', media: "http://i.huffpost.com/gen/1985279/images/o-ROCK-CLIMBING-SUNSET-facebook.jpg", date: "2017-07-24")

post_heading = Component.create(component_type: 'post-heading', content: 'Beer and Peanuts')

post_paragraph1 = Component.create(component_type: 'post-paragraph', content: 'Learning how to climb, training to become a better climber and continuing to grind along the slow road of self-improvement was and still is one of the greatest social adventures of my life.')

post_paragraph2 = Component.create(component_type: 'post-paragraph', content: 'One awesome thing about climbing is how well it brings remarkably different people together. I have met averyone from anaesthesiologists to woodworkers at the climbing gym, all sharing the same passion for pain and suffering - did I mention the beer and its peanut sidekick?')

post_paragraph3 = Component.create(component_type: 'post-paragraph', content: "What I am trying to say is : instead of taking your shoes off your complaining feet and whining about how one of your calluses just turned into the most dramatic-looking flapper, get off your isolated rear and start talking to someone you just saw sending that sick problem you've unsuccessfully been trying for months. Who knows, the guy or gal might have something interesting to say, and if not, you will get off to a flying start with your boring climber who had nothing to say list. Having said this, you'll probably never actually get around to starting the list. Firstly because most climbers have something to say, and secondly because what they end up saying is immediately going to be overshadowed by the excruciating burning sensation in your hand, reminding you to show off the huge flapper which is causing it, to your newly found listener. ")

post_paragraph4 = Component.create(component_type: 'post-paragraph', content: 'I digress...')

post_paragraph5 = Component.create(component_type: 'post-paragraph', content: 'On a more serious note, I learned how to climb, and continue learning, by watching and talking to other climbers. Keep asking them questions about technique or beta, they will help. Seriously, the people around you are not only fun to talk to, but are also an unlimited supply of climbing know-how. There is a guy at my local climbing gym, who has become known as *the guru* within the confines of our climbing group. He literally knows everything about technique and is eager to share his knowledge with anyone who seems to be struggling with their project.')

post_paragraph6 = Component.create(component_type: 'post-paragraph', content: 'We have all struggled with projects, everyone does at some point. We have also all struggled with the rate at which we improve, especially when that rate seems to be zilch - zero - nothing - nada.')

post_paragraph7 = Component.create(component_type: 'post-paragraph', content: "This quote from Jim Lubell sums up quite nicely what frustrates me the most about climbing : not progressing. The truth is, if you keep trying, you will sooner or later leave the *plateau* you've been stuck on for what seems like forever. Keep your sessions interesting by being social, or trying some projects you would never even consider. In my experience, the more you climb the shorter your *plateaus* will be. It's hard work and productive climbing time that will get you through those dry spells in your progression. Cue second semi-inspirational quote, this one by Randy Leavitt :")

post_paragraph8 = Component.create(component_type: 'post-paragraph', content: "I've tried many sports, but climbing is the best. The beauty of this sport is that no matter how good you get, you can always find a way to challenge yourself.")


post_paragraph9 = Component.create(component_type: 'post-paragraph', content: "So keep climbing until you get too tired to lift off the pads, then sit down with some friends at the bar, buy yourself a beer and enjoy the free peanuts that come with it...")

post_image1 = Component.create(component_type: 'post-image', content: 'http://i.huffpost.com/gen/1985279/images/o-ROCK-CLIMBING-SUNSET-facebook.jpg')

post_image2 = Component.create(component_type: 'post-image', content: 'https://www.climbing.com/.image/t_share/MTQyNDcwODg4MzAwNzQ5OTI2/burr121315_152_gn-copyjpg.jpg')

post_image3 = Component.create(component_type: 'post-image', content: 'https://i.ytimg.com/vi/V1P97VVt6_k/maxresdefault.jpg')

post.components << post_heading
post.components << post_paragraph1
post.components << post_paragraph2
post.components << post_paragraph3
post.components << post_image1
post.components << post_paragraph4
post.components << post_paragraph5
post.components << post_paragraph6
post.components << post_image3
post.components << post_paragraph7
post.components << post_paragraph8
post.components << post_paragraph9

puts 'DONE RAN THE SEED'