class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :yield, default: 1
      t.string :type
      t.text :equipment
      t.text :ingredients
      t.text :instructions
      t.datetime :date_created

      t.timestamps
    end
  end
end
