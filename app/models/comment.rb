class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates_presence_of :message
end
