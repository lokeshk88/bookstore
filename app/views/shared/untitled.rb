before_create :assign_role

  has_many :authors
  enum role: {
    admin: 0,
    user: 1
  }

  def assign_role
    self.role = 'user'
  end
