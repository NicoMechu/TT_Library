class Author < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  has_many :books, dependent: :destroy
  accepts_nested_attributes_for :books

  def to_s
    "#{first_name} #{last_name}"
  end
end
