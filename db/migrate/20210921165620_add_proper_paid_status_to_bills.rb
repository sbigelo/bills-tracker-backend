class AddProperPaidStatusToBills < ActiveRecord::Migration[6.1]
  def change
    add_column :bills, :paid_status, :string
  end
end
