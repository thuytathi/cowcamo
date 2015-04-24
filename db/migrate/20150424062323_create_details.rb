class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :floor_plan
      t.string :area
      t.string :balacony
      t.string :structure
      t.string :floor
      t.string :total_unit
      t.string :built_year
      t.string :renovated_year
      t.string :maneger_company
      t.string :land_use_right
      t.string :access
      t.string :price
      t.string :loan
      t.string :maneger_cost
      t.string :repair_reserve
      t.string :other_cost
      t.string :address
      t.string :current_state
      t.string :delivery
      t.string :other

      t.timestamps null: false
    end
  end
end
