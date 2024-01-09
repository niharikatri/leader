class Lead < ApplicationRecord
    belongs_to :category
    belongs_to :product, class_name: 'Product', foreign_key: 'exclusive_for_product_id', optional: true
    belongs_to :status
    belongs_to :type
  
    has_many :notes
  
    validates :first_name, :last_name, :company_name, :email, presence: true  

    def full_name
       first_name + " " + last_name
    end

    def claim
     return false if claimed?

      update(claimed: true)

     notes.create(author: 'System', note: 'Claimed', creation_date: Time.now)

      true
    end

    def record_count
      email = self.email
       Lead.where(email: email).count
    end

end
