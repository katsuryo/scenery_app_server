module Resolvers::QueryTypes
  class UserResolver < GraphQL::Schema::Resolver
    type Types::UserType, null: false
    argument :id, ID, required: false

    def resolve(**args)
      form = User::Resolvers::QueryTypes::UserForm.new(args)
      if form.valid?
        handler = form.build_handler
        handler.handle_user
      else
        ErrorResponse.base_response("無効なリクエスト", STATUS_BAD_REQUEST)
      end
    end
    def resolve(id:)
      
      User.find(id)
    end
  end
end
