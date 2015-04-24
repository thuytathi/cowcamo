class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :title
      t.binary :image
      t.text :content
      t.references :user, index: true
      t.references :category, index: true
      t.references :detail, index: true

      t.timestamps null: false
    end
    add_foreign_key :houses, :users
    add_foreign_key :houses, :categories
    add_foreign_key :houses, :details
  end
end
