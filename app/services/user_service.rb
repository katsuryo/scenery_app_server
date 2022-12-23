class UserService
  def create_user(params)
    user = User.new(params)
    user.save!
    user
  end
end
