class CreateCarModels < ActiveRecord::Migration[7.0]
  def change
    create_table :car_models do |t|
      t.string :name
      t.references :manufacturer, null: false, foreign_key: true
      t.references :car_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
