class Book < ActiveRecord::Base
  
  mount_uploader :image, AvatarUploader
  validates_presence_of :title, :ISBN, :year
  validates :year, :inclusion => 1..Time.now.year
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_many :requests, dependent: :destroy

  accepts_nested_attributes_for :comments, :requests

  def to_s
    title
  end

end
