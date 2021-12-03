module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items,
          [Types::ItemType],
          null: false,
          description: "Returns a list of items in the powerLib library."

    def items
      Item.preload(:user)
    end
  end
end
