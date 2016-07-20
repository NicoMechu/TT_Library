class Book < ActiveRecord::Base
  validates_presence_of :title, :ISBN, :year
  validates :year, :inclusion => 1..Time.now.year
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_many :requests, dependent: :destroy
end
