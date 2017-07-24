class PostResource < JSONAPI::Resource
  attributes :author, :title, :teaser, :media, :date
  has_many :components
end