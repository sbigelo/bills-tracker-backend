class Bill < ApplicationRecord
    has_many :users, dependent: :destroy
    validates :company_name, presence: true
    before_create :slugify

    def slugify
        self.slug = company_name.parameterize
    end


end
