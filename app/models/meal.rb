class Meal < ApplicationRecord
  belongs_to :user

  default_scope { order(date: :desc, time: :desc) }

  scope :today, -> {where(date: Date.today)}
end
