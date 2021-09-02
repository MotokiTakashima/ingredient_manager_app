class Post < ApplicationRecord
  validates :product, presence: true, length: { maximum: 30 }
end
