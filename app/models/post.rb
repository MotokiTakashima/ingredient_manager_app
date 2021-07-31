class Post < ApplicationRecord
  validates :product, presence: true, length: { maximum: 30 }
  validates :date, presence: true, length: { maximum: 15 }
end
