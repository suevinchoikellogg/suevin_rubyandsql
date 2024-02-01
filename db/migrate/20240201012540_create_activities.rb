class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.integer "salesperson_id" # foreign key to a salesperson
      t.integer "contact_id" # foreign key to a contact
      t.string "notes"

      t.timestamps
    end
  end
end
