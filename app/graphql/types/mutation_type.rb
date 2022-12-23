module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::User::CreateUser
  end
end
