class Request < ApplicationRecord
  belongs_to :user
  belongs_to :book
  enum status: [ :canceled , :pending, :accepted, :returned]
  # validates :status, :inclusion => [ :canceled , :pending, :accepted, :returned]
end
