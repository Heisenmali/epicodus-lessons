Post.destroy_all
Component.destroy_all

post = Post.create(author: 'nkls')

post_heading = Component.create(component_type: 'post_heading', content: 'hello world, this is the post heading component')

post_paragraph = Component.create(component_type: 'post_paragraph', content: 'hello world, this is the post paragraph component')

post.components << post_heading
post.components << post_paragraph