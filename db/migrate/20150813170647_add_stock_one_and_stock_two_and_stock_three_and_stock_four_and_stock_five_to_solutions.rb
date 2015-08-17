class AddStockOneAndStockTwoAndStockThreeAndStockFourAndStockFiveToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :stock_one, :float
    add_column :solutions, :stock_two, :float
    add_column :solutions, :stock_three, :float
    add_column :solutions, :stock_four, :float
    add_column :solutions, :stock_five, :float
  end
end
