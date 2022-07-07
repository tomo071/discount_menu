class CreateReshipes < ActiveRecord::Migration[6.1]
  def change
    create_table :reshipes do |t|
      
      t.string :title
      
      t.integer :item_id
      t.string :user_id
      
      t.text :body

      t.timestamps
    end
  end
end
