class Author < ApplicationRecord
	belongs_to :admin
	has_many :books
end
