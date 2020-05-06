class CreateCreations < ActiveRecord::Migration[6.0]
  def change
    create_table :creations, id: :uuid do |t|
      t.string :name, null: false
      t.text :description
      t.uuid :creator_id, null: false

      t.timestamps
    end

    add_index :creations, [:creator_id, :name], unique: true
  end
end
