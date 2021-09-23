# class CreateBills < ActiveRecord::Migration[6.1]
#   def change
#     create_table :bills do |t|
#       t.string :company_name
#       t.string :due_date
#       t.string :amount_due
#       t.string :notes
#       t.boolean :paid_status
#       t.timestamps
#     end
#   end
# end

class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.string :company_name
      t.string :due_date
      t.string :amount_due
      t.string :notes
      t.string :paid_status
      t.string :slug
      t.timestamps
    end
  end
end