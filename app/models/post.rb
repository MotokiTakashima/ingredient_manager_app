class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :post_genres, dependent: :destroy
  has_many :genres, through: :post_genres, dependent: :destroy

  validates :product, presence: true, length: { maximum: 30 }
  validates :start_time, presence: true
end
