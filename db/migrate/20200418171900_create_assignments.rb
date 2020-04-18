class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :from_id
      t.integer :to_id
      t.references :gift_list

      t.timestamps
    end
  end
end
