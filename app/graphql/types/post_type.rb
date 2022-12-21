# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :user, Types::UserType, null: false # この一文を追加。belongs_to :userのようなもの
  end
end
