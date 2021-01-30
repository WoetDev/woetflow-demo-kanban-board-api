class Card < ApplicationRecord
  belongs_to :column
  belongs_to :user

  validates :title, :date, :column_id, :user_id, presence: true
end
