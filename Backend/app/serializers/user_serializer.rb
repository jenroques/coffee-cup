class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :password_digest

  has_many :reviews
  has_many :shops
end
