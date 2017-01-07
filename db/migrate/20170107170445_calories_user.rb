class CaloriesUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :expected_calories, :integer
  end
end
