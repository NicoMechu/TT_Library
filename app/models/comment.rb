class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :user
  validates_presence_of :message
end
