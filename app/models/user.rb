class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable#,
          # :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
end
