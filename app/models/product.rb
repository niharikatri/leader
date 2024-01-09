class Product < ApplicationRecord
    has_many :leads, foreign_key: :exclusive_for_product_id
end
