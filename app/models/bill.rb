class Bill < ApplicationRecord
    include ActiveModel::Serializers::JSON
    has_many :users
    validates :company_name, presence: true
    before_create :slugify

    def slugify
        self.slug = company_name.parameterize
    end


end
