module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # First describe the field signature:
    field :user, UserType, "Find a user by ID" do
      argument :id, ID
    end

    # Then provide an implementation:
    def user(id:)
      User.find(id)
    end
  end
end
