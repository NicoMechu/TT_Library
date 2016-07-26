class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :requests, dependent: :destroy
  has_many :books, through: :requests
  has_many :comments, dependent: :destroy

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  accepts_nested_attributes_for :requests, :books, :comments
  #attr_accessor :email

  def to_s
    email
  end

  def has_read?(book)
    requests.where(status: 'returned', book: book).any?
  end
  
end
