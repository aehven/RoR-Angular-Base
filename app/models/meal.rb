class Meal < ApplicationRecord
  belongs_to :user

  default_scope { order(date: :desc, time: :desc) }

  scope :today, -> {where(date: Date.today)}

  def self.filter(params)
    filter = Meal.all

    if !params[:from_date].blank?
      filter = filter.where("date >= ?", params[:from_date])
    end

    if !params[:to_date].blank?
      filter = filter.where("date <= ?", params[:to_date])
    end

    if !params[:from_time].blank?
      filter = filter.where("time >= ?", params[:from_time])
    end

    if !params[:to_time].blank?
      filter = filter.where("time <= ?", params[:to_time])
    end

    filter
  end
end
