class Request < ApplicationRecord
  belongs_to :user
  belongs_to :book
  enum status: [ :canceled , :pending, :accepted, :returned]
  validates_uniqueness_of :book, scope: :user, conditions: -> { where(status: ['pending', 'accepted']) }, message: ': You already have requested this book' 
end
