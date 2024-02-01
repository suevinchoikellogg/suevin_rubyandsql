# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file



# 2. insert 1-2 rows in salespeople table.

puts "Salespeople: #{Salesperson.all.count}"

new_salesperson = Salesperson.new
new_salesperson ["first_name"] = "Sue"
new_salesperson["last_name"] = "Choi"
new_salesperson["email"] = "suevin.choi@kellogg.northwestern.edu"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson ["first_name"] = "Justin"
new_salesperson["last_name"] = "Cho"
new_salesperson["email"] = "J.cho@kellogg.northwestern.edu"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson ["first_name"] = "Aiden"
new_salesperson["last_name"] = "Cho"
new_salesperson.save

# puts new_salesperson.inspect



# 3. write code to display how many salespeople rows are in the database

puts "Salespeople: #{Salesperson.all.count}"
# ---------------------------------
# Salespeople: 2



# 4. modify/update column data for a row in the salespeople table.
aiden = Salesperson.find_by({"first_name" => "Aiden"})
puts aiden["url"]
aiden["email"] = "a.cho@kellogg.northwestern.edu"
aiden.save

sue = Salesperson.find_by({"first_name" => "Sue"})
puts sue["url"]
sue["email"] = "s.choi@kellogg.northwestern.edu"
sue.save


# CHALLENGE:
# 5. write code to display each salesperson's full name

puts "Salespeople: #{Salesperson.all.count}"
salespeople = Salesperson.all

for person in salespeople
    first_name = person ["first_name"]
    last_name = person ["last_name"]
    puts "#{first_name} #{last_name}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
