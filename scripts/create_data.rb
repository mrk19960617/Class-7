Company.destroy_all
Contact.destroy_all

apple = Company.new
apple["name"] = "Apple"
apple["city"] = "Cupertino"
apple["state"] = "CA"
apple.save

tim = Contact.new
tim["first_name"] = "Tim"
tim["last_name"] = "Cook"
tim["email"] = "tim@apple.com"
tim["phone_number"] = "777-777-7777"
tim["company_id"] = apple["id"]
tim.save

craig = Contact.new
craig["first_name"] = "Craig"
craig["last_name"] = "Federighi"
craig["email"] = "craig@apple.com"
craig["phone_number"] = "888-888-8888"
craig["company_id"] = apple["id"]
craig.save

amazon = Company.new
amazon["name"] = "Amazon"
amazon["city"] = "Seattle"
amazon["state"] = "WA"
amazon.save

jeff = Contact.new
jeff["first_name"] = "Jeff"
jeff["last_name"] = "Bezos"
jeff["email"] = "jeff@amazon.com"
jeff["phone_number"] = "666-666-6666"
jeff["company_id"] = amazon["id"]
jeff.save

twitter = Company.new
twitter["name"] = "Tesla"
twitter["city"] = "Palo Alto"
twitter["state"] = "CA"
twitter.save

elon = Contact.new
elon["first_name"] = "Elon"
elon["last_name"] = "Musk"
elon["email"] = "elon@tesla.com"
elon["phone_number"] = "555-555-5555"
elon["company_id"] = twitter["id"]
elon.save

post = Post.new
post["author"] = "Ben"
post["body"] = "My first tacogram!"
post["image"] = "https://images.unsplash.com/photo-1607891715106-ba61a2951650?q=80&w=2258&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
post.save

post = Post.new
post["author"] = "Brian"
post["body"] = "Yummmm!"
post["image"] = "https://images.unsplash.com/photo-1511690078903-71dc5a49f5e3?q=80&w=3164&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
post.save

puts "There are now #{Company.all.count} companies and #{Contact.all.count} contacts."
puts "There are now #{Post.all.count} Tacogram posts."
