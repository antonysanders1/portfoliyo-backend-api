class Work < ApplicationRecord
    has_one_attached :image
    belongs_to :user

    validates :title, presence: true
    validates :description, presence: true
end
