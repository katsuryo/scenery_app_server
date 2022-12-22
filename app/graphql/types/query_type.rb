module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :users, resolver: Resolvers::QueryTypes::UsersResolver
    field :user, resolver: Resolvers::QueryTypes::UserResolver
    field :posts, resolver: Resolvers::QueryTypes::PostsResolver
    # field :post, resolver: Resolvers::QueryTypes::PostResolver

    # field :user, Types::UserType, null: false do
    #   description 'ユーザ情報を1件取得する'
    #   argument :id, Int, required: true, description: 'ユーザID'
    # end
    # def user(id:)
    #   User.find(id)
    # end

    field :post, Types::PostType, null: false do
      description 'post情報を1件取得する'
      argument :id, Int, required: true, description: 'postID'
    end
    def post(id:)
      Post.find(id)
    end
  end
end
