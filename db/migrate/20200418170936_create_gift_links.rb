class CreateGiftLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :gift_links do |t|
      t.string :text

      t.timestamps
    end
  end
end
