class Book < ActiveRecord::Base
  validates_presence_of :title, :ISBN, :year
  validates :year, :inclusion => 1..Time.now.year
  belongs_to :author
end