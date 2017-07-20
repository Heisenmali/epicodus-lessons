class ComponentResource < JSONAPI::Resource
  attributes :component_type, :content
  belongs_to :post
end