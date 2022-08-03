class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

      t.string :item_name
      t.integer :price
      t.integer :sale_price
      t.integer :genre_id

      t.boolean :discount, default:false

      t.timestamps
    end
  end
end
