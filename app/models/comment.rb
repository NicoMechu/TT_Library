require 'obscenity/active_model'

class Comment < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates_length_of :message, minimum: 5
  validates :message,  obscenity: { sanitize: true, replacement: :stars }
  validates :rate, :inclusion => 0..5
  scope :recents, -> { order(created_at: :desc) }
end
