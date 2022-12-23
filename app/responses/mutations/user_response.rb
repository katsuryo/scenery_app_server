class Mutations::UserResponse
  class << self
    def base_response(user)
      return nil if user.blank?

      { user: }
    end
  end
end
