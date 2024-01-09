class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :name
      t.string :short
      t.integer :external_id
      t.integer :position

      t.timestamps
    end
  end
end
