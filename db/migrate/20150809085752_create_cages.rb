class CreateCages < ActiveRecord::Migration
  def change
    create_table :cages do |t|
      t.integer :num_mice
      t.string :line
      t.integer :num_litters
      t.string :pups
      t.string :cage_type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
