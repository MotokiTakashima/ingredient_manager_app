class Memo < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, presence: true, length: { maximum: 30 }
end
