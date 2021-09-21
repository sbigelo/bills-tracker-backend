class BillsSerializer < ActiveModel::Serializer
    attributes :id, :company_name, :due_date, :amount_due, :notes, :paid_status
    has_many :users
end



