class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end

# SQL version of 'creating table'
# t. = (type) string / integer / true or false / etc
# t.timestamps = created_at datetime and updated_at datetime will be created to track table edit/change

