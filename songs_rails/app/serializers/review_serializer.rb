require 'jsonapi-serializers'

class ReviewSerializer
  include JSONAPI::Serializer
  attribute :id
  attribute :author
  attribute :content

  has_one :song
end
