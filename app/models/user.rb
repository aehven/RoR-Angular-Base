class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role, :expected_calories
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable#,
          # :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  enum role: {
    regular: 100,
    manager: 200,
    admin: 1000
  }

  has_many :meals

  scope :search, -> term {
    where("first_name like ? or last_name like ? or email like ?",
    "%#{term}%", "%#{term}%", "%#{term}%")
  }
end
