class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates_length_of :message, minimum: 5
  validates :rate, :inclusion => 0..5
  scope :recents, -> { order(created_at: :desc) }
end
