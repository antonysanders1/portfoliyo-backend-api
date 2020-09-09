class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :title, :email, :bio, :avatar
  has_many :works

  def avatar
    rails_blob_path(object.avatar, only_path: true) if object.avatar.attached?
  end
end
