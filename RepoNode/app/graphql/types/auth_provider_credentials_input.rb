module Types
  class AuthProviderCredentialsInput < BaseInputObject
    graphql_name 'AUTH_PROVIDER_CREDENTIALS'

    argument :username, String, required: true
    argument :password, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :last_name, String, required: false
  end
end
