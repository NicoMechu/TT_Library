class Book < ApplicationRecord
  validates_presence_of :title, :ISBN, :year
  belongs_to :author
end