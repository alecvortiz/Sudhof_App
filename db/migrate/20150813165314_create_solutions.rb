class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.float :solute_one
      t.float :solute_two
      t.float :solute_three
      t.float :solute_four
      t.float :solute_five
      t.string :name
      t.string :solute_one_n
      t.string :solute_two_n
      t.string :solute_three_n
      t.string :solute_four_n
      t.string :solute_five_n
      t.float :final_volume

      t.timestamps null: false
    end
  end
end
