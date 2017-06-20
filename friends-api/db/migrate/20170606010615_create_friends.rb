class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :character
      t.string :location
      t.string :quote

      t.timestamps
    end
  end
end
