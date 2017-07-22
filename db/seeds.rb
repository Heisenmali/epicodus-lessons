Post.destroy_all
Component.destroy_all

post = Post.create(author: 'nkls')

post_heading = Component.create(component_type: 'post-heading', content: 'hello world, this is the post heading component')

post_paragraph = Component.create(component_type: 'post-paragraph', content: 'hello world, this is the post paragraph component')

post_image = Component.create(component_type: 'post-image', content: 'https://s3.eu-central-1.amazonaws.com/bynk-blog/bynk-blog/thing.jpeg')
post.components << post_heading
post.components << post_paragraph
post.components << post_image

puts 'DONE RAN THE SEED'