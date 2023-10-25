class Book < ApplicationRecord
  has_one_attached :page
  belongs_to :user
  has_many :comments
end
