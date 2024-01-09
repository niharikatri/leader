class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :short
      t.integer :external_id

      t.timestamps
    end
  end
end
