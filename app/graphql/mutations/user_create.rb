# frozen_string_literal: true

module Mutations
  class UserCreate < BaseMutation
    description "Creates a new user"

    type Types::UserType

    argument :name, String, required: false
    argument :email, String, required: false
    argument :phone, Integer, required: false
    argument :country_id, Integer, required: false

    def resolve(name:, email:, phone:, country_id:)
      ::User.create!(name: name, email: email, phone: phone, country_id: country_id)
    end
  end
end
