class PostResource < JSONAPI::Resource
  attributes :author, :title, :teaser
  has_many :components
end