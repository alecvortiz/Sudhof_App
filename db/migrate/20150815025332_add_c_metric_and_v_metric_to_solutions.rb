class AddCMetricAndVMetricToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :c_metric, :string
    add_column :solutions, :v_metric, :string
  end
end
