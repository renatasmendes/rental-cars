class CreateCarCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :car_categories do |t|
      t.string :name
      t.decimal :daily_rate
      t.decimal :car_insurance
      t.decimal :third_part_insurance

      t.timestamps
    end
  end
end
