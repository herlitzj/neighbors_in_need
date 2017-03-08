class ChangeAmountToFloat < ActiveRecord::Migration[5.0]
  def change
  	change_column :requests, :amount, :float
  end
end
