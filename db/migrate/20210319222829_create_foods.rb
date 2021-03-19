class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :price
      t.integer :type_id
      t.timestamps
    end
  end
end
