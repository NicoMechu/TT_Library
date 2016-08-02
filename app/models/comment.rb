require 'obscenity/active_model'

class Comment < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  ratyrate_rateable "book_rate"

  validates_length_of :message, minimum: 5
  validates :message,  obscenity: { sanitize: true, replacement: :stars }
  scope :recents, -> { order(created_at: :desc) }
end
