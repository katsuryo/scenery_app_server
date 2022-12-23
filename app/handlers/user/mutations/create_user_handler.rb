# frozen_string_literal: true

class User::Mutations::CreateUserHandler
  attr_reader :user_service, :params

  def initialize(params)
    @user_service = UserService.new
    @params = params
  end

  def handle_create_user
    user_service.create_user(params)
  end
end
