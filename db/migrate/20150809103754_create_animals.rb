class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.date :dob
      t.string :gender
      t.string :genotype
      t.integer :cage_id
      t.integer :tag
      t.string :virus

      t.timestamps null: false
    end
  end
end
