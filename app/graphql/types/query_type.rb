module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :user, Types::UserType, null: false do
      description 'ユーザ情報を1件取得する'
      argument :id, Int, required: true, description: 'ユーザID'
    end
    def user(id:)
      User.find(id)
    end

    field :users, [Types::UserType], null: false, description: 'ユーザ情報を全件取得する'
    def users
      User.all
    end

    field :posts, [Types::PostType], null: false, description: 'Post情報を全件取得する'
    def posts
      Post.all
    end

    field :post, Types::PostType, null: false do
      description 'post情報を1件取得する'
      argument :id, Int, required: true, description: 'postID'
    end
    def post(id:)
      Post.find(id)
    end
  end
end
