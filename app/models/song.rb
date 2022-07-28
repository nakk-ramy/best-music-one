class Song < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :artist
    validates :image
  end
end
