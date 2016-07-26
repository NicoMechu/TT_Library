class Request < ActiveRecord::Base

  belongs_to :user
  belongs_to :book
  enum status: [ :canceled , :pending, :accepted, :returned]

  validates_uniqueness_of :book_id, scope: :user_id, conditions: -> { where(status: ['pending', 'accepted']) }, message: ': You already have requested this book' 

  scope :not_canceled, lambda {where.not(status: 'canceled')}
  scope :readed_only, lambda { |b| where( book: b, status: 'returned') } 
end
