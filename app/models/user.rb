class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # before_create :assign_role

  has_many :book_users
  has_many :books, through: :book_users

 

  has_many :books
  enum role: {
    admin: 0,
    author: 1,
    user: 2
  }

  def assign_role
    self.role = 'user'
  end
  
end

