class ExpandUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :expected_calories, :integer
    add_column :users, :role, :integer, limit: 1
  end
end
