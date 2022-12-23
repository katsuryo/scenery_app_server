module Mutations
  class Mutations::User::CreateUser < BaseMutation
    graphql_name 'CreateUser'
    field :user, Types::UserType, null: true

    argument :name, String, required: true
    argument :email, String, required: true

    def resolve(**args)
      form = Api::User::Mutations::Users::CreateForm.new(args)
      if form.valid?
        handler = form.build_handler
        response = handler.handle_create_user
        Mutations::UserResponse.base_response(response)
      else
        ErrorResponse.base_response('無効なリクエストです', STATUS_BAD_REQUEST)
      end
    end
  end
end
