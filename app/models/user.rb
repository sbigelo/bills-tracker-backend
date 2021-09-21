class User < ApplicationRecord
    belongs_to :bill
    validates :first_name, :last_name, presence: true
end
