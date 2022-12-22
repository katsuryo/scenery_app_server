module Resolvers::QueryTypes
  class PostResolver < GraphQL::Schema::Resolver
    type Types::PostType, null: false
    argument :id, ID, required: false
    def resolve(id:)
      Post.find(id)
    end
  end
end
