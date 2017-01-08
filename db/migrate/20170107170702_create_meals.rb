class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :description
      t.integer :calories
      t.references :user
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
