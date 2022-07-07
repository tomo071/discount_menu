class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      
      t.string :item_name
      t.integer :price
      
      t.integer :genre_id

      t.timestamps
    end
  end
end