class BillsSerializer < ActiveModel::Serializer
    attributes :id, :company_name, :due_date, :amount_due, :notes, :paid_status, :slug
    # , :users
    has_many :users, each_serializer: UserSerializer

    # def users
    #     object.users.map do |user|
    #         UserSerializer.new(user)
    #     end
    # end



end



