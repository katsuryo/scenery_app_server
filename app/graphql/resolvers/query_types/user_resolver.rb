module Resolvers::QueryTypes
  class UserResolver < GraphQL::Schema::Resolver
    type Types::UserType, null: false
    argument :id, ID, required: false
    def resolve(id:)
      User.find(id)
    end
  end
end