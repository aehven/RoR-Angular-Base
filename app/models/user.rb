class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :role, :address, :phone#, :latitude, :longitude
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          # :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  # this isn't necessary if open maps in new tab with address query
  # geocoded_by :address
  # after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  enum role: {
    regular: 100,
    manager: 200,
    admin: 1000
  }

  scope :search, -> term {
    where("first_name like ? or last_name like ? or email like ?",
    "%#{term}%", "%#{term}%", "%#{term}%")
  }
end
