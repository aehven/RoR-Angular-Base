class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals
end
