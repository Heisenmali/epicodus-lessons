require 'jsonapi-serializers'

class SongSerializer
  include JSONAPI::Serializer

  attribute :artist
  attribute :title
end
