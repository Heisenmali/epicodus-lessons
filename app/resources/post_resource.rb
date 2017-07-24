class PostResource < JSONAPI::Resource
  attributes :author, :title, :teaser, :media
  has_many :components
end