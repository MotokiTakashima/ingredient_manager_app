class Memo < ApplicationRecord
  validates :title, presence: true, length: { maximum: 30 }
end
