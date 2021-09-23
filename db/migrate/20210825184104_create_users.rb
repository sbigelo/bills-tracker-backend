# class CreateUsers < ActiveRecord::Migration[6.1]
#   def change
#     create_table :users do |t|
#       t.string :password_digest
#       t.string :first_name
#       t.string :last_name
#       t.string :email
#       t.timestamps
#     end
#   end
# end

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
