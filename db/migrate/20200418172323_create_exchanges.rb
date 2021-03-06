class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.integer :owner_id
      t.references :user, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
