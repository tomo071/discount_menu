class CreateReshipes < ActiveRecord::Migration[6.1]
  def change
    create_table :reshipes do |t|

      t.string :title

      t.integer :material_id

      t.text :body

      t.timestamps
    end
  end
end
