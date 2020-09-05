class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :email, :bio
  has_many :works
end
