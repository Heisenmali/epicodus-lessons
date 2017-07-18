require 'jsonapi-serializers'

class SongSerializer
  include JSONAPI::Serializer
  attribute :id
  attribute :artist
  attribute :title
end
