require 'json'
file_path = 'jsonfile.json'
details = JSON.parse(File.read(file_path))
puts("LOADING JSON FILE:")
puts (details)

#read specific data
def get_contact(details, contact_id)
  details["contacts"].find {|c| c["ID"] == contact_id}
end
puts ("READING SPECIFIC CONTACT:")
puts ("For ID 101: #{get_contact(details, 101)}")

#add/create contact
def add_contact(details, contact)
  details["contacts"]<< contact
end
 
new_contact = {
  "id" => 103,
  "name" => "Karma T",
  "phone" => "17238273",
  "email"=> "karmat@gamil.com"
}

add_contact(details, new_contact)
puts("AFTER ADDING NEW CONTACT:")
puts(details)

#delete contact
def delete_contact(details, contact_id)
  contact = details["contacts"].find {|c| c["id"] ==contact_id}
  details["contacts"].delete(contact) if contact
end
delete_contact(details, 103)
puts ("AFTER DELEING CONTACT:")
puts(details)

#updating contact details.
def update_contact(details, contact_id, key, value)
  contact = details["contacts"].find {|c| c["id"] == contact_id}
  contact[key] = value if contact
end
update_contact(details, 101, "name", "Pema Namgay")

puts("AFTER UPDATING CONTACT:")
puts(details)

