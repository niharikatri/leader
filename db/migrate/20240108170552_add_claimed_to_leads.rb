class AddClaimedToLeads < ActiveRecord::Migration[7.0]
  def change
    add_column :leads, :claimed, :boolean
    add_column :leads, :highlighted, :boolean
  end
end
