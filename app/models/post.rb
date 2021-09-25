class Post < ApplicationRecord
  validates :product, presence: true, length: { maximum: 30 }
  validates :genre, presence: true
  validates :start_time, presence: true
  enum genre: {
    others: 0,
    vegetable: 1,
    meat: 2,
  }
end
