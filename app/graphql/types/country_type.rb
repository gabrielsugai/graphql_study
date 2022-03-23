# frozen_string_literal: true

module Types
  class CountryType < Types::BaseObject
    field :id, ID, null: false
    field :acronym, String
    field :name, String
    field :users, [Types::UserType],
      description: 'Users from this country'
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
