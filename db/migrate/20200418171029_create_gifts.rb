class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :description
      t.references :gift_link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
