class CreateGiftLists < ActiveRecord::Migration[6.0]
  def change
    create_table :gift_lists do |t|
      t.integer :user_id
      t.string :title
      t.references :gift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
