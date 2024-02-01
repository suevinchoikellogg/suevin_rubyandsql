# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

puts "Companies: #{Company.all.count}"


# 1. insert new rows in the contacts table with relationship to a company

apple = Company.find_by({"name" => "Apple"})

contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "tim@apple.com"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Sue"
contact["last_name"] = "Choi"
contact["email"] = "sc@apple.com"
contact["company_id"] = apple["id"]
contact.save

amazon = Company.find_by({"name" => "Amazon"})

contact = Contact.new
contact["first_name"] = "Justin"
contact["last_name"] = "Cho"
contact["email"] = "Jc@amazon.com"
contact["company_id"] = amazon["id"]
contact.save

sue = Contact.find_by({"first_name" => "Sue"})
sue["first_name"] = "Jeff"
sue["last_name"] = "Bezos"
sue["email"] = "jb@amazon.com"
sue.save

justin = Contact.find_by({"first_name" => "Justin"})
justin["first_name"] = "Steve"
justin["last_name"] = "Jobs"
justin["email"] = "sj@apple.com"
justin.save

puts "Contacts: #{Contact.all.count}"

# 2. How many contacts work at Apple?
apple_employees = Contact.where({"company_id" => apple["id"]})
puts "Apple contacts: #{apple_employees.count}"

amazon_employees = Contact.where({"company_id" => amazon["id"]})
puts "Amazon contacts: #{amazon_employees.count}"


# 3. What is the full name of each contact who works at Apple?
print "Apple employee list"
for contact in apple_employees
    first_name = contact["first_name"]
    last_name = contact["last_name"]
    puts "#{first_name} #{last_name}"
end

print "Amazon employee list"
for contact in amazon_employees
    first_name = contact["first_name"]
    last_name = contact["last_name"]
    puts "#{first_name} #{last_name}"
end