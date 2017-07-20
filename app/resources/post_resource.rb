class PostResource < JSONAPI::Resource
  attributes :author
  has_many :components
end