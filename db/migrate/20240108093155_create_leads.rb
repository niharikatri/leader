class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.integer :category_id
      t.integer :exclusive_for_product_id
      t.string :source
      t.integer :size
      t.string :company_name
      t.integer :type_id
      t.string :campaign
      t.integer :status_id
      t.datetime :bttc
      t.string :timezone
      t.integer :phone
      t.boolean :express
      t.boolean :enterprise
      t.string :email

      t.timestamps
    end
  end
end
