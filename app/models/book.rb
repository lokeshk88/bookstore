class Book < ApplicationRecord
  has_one_attached :page
  has_and_belongs_to_many :users
  has_many :comments
end
