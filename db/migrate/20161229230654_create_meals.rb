class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :description
      t.integer :calories

      t.references :user
      t.timestamps
    end
  end
end
