class ReviewSerializer
  include JSONAPI::Serializer
  attributes :title, :desc, :score, :shop_id, :user_id
end
