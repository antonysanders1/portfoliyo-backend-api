class User < ApplicationRecord

    has_secure_password
    has_one_attached :avatar
    has_many :works

    validates :name, presence: true
    validates :email, uniqueness: true

    def avatar_url
        Rails.application.routes.url_helpers.rails_representation_url(
          avatar.variant(resize_to_limit: [200, 200]).processed, only_path: true
        )
      end
    
end
