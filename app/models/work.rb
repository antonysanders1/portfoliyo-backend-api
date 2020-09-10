class Work < ApplicationRecord
    has_one_attached :image
    belongs_to :user

    validates :title, presence: true
    validates :description, presence: true

    # def work_url
    #     Rails.application.routes.url_helpers.rails_representation_url(
    #       work.variant(resize_to_limit: [200, 200]).processed, only_path: true
    #     )
    #   end
end
