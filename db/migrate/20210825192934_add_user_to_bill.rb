class AddUserToBill < ActiveRecord::Migration[6.1]
  def change
    add_reference :bills, :user, foriegn_key: true
  end
end
