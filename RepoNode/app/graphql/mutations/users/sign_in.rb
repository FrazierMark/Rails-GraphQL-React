module Mutations::Users
  class SignIn < Mutations::BaseMutation
    argument :username, String, required: true
    argument :password, String, required: true

    field :token, String, null: false
    field :user, Types::UserType, null: true

    def resolve(username:, password:)
      user = User.find_by(username: username)

      if user&.authenticate(password)
        token = JWT.encode({ user_id: user.id, exp: 24.hour.from_now.to_i }, 'secret', 'HS256')
        { user: user, token: token }
      else
        raise GraphQL::ExecutionError, 'Invalid email or password'
      end
    end
  end
end
