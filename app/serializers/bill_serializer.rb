class BillsSerializer < ActiveModel::Serializer
    attributes :id, :company_name, :due_date, :amount_due, :notes, :paid_status, :slug
    has_many :users
end



