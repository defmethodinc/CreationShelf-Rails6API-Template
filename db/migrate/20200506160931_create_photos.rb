class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos, id: :uuid  do |t|
      t.string :url, null: false
      t.string :holder_type, null: false
      t.uuid :holder_id, null: false

      t.timestamps
    end

    add_index :photos, [:url, :holder_id, :holder_type], unique: true
  end
end
