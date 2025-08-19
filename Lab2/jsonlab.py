import json

#json data
details = {
    "contacts": [
        {
            "ID": 2000,
            "name": "Laki Kishor Subba",
            "phone": "123456",
            "email": "laki@example.com"
        },
        {
            "ID": 201,
            "name": "Penjor",
            "phone": "2003",
            "email": "penjor@example.com"
        }
    ]
}

#CRUD

# read all
y = json.dumps(details)
print(y)

#read specific
def get_contact_by_id(contact_id):
    for contact in details["contacts"]:
        if contact["ID"] == contact_id:
            return contact
    return None
print("Read ID 201:", get_contact_by_id(201))

#create
def add_contact(contact):
    details["contacts"].append(contact)

new_contact = {
    "ID": 202,
    "name": "Sonam",
    "phone": "987654",
    "email": "sonam@example.com"
}
add_contact(new_contact)

print(y)