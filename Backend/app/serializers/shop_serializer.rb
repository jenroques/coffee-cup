class ShopSerializer
  include JSONAPI::Serializer
  attributes :name, :image_url, :slug

  has_many :reviews
  has_many :users
end
