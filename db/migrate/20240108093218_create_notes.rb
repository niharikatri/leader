class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :lead_id
      t.string :author
      t.datetime :creation_date
      t.text :note

      t.timestamps
    end
  end
end
