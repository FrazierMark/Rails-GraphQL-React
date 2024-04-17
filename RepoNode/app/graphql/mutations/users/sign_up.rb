module Mutations::Users
  class SignUp < Mutations::BaseMutation
    graphql_name "signUp"

    argument :username, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :password, String, required: true
    argument :admin, Boolean, required: false

    field :user, Types::UserType, null: true
    field :errors, Types::ValidationErrorsType, null: true

    def resolve(**args)
      user = User.new(args)

      if user.save
        confirmation_token = user.generate_confirmation_token

        {user: user, success: true}
      else
        {errors: user.errors, success: false}
      end
    end
  end
end
