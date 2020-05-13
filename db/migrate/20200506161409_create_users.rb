class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, unique: true
      t.string :name

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
