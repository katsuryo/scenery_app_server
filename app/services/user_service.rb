class UserService

  def show_user(id)
    User.find(id)
  end
  def create_user(params)
    user = User.new(params)
    user.save!
    user
  end
end
