class User < ApplicationRecord
    has_one_attached :avatar
    has_many :works

    validates :name, presence: true
    validates :email, uniqueness: true
    
end
