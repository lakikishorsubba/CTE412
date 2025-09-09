require 'json'

file_path = 'jsonfile.json'
details = if File.exist?(file_path)
            JSON.parse(File.read(file_path))
          else
            { "contacts" => [] }
          end

puts "Enter your details:"
print "Enter ID: "
id = gets.chomp
print "Enter Name: "
name = gets.chomp
print "Enter Phone: "
phone = gets.chomp
print "Enter Email: "
email = gets.chomp

details["contacts"] << {
  "id" => id,
  "name" => name,
  "phone" => phone,
  "email" => email
}

File.open(file_path, "w") do |f|
  f.write(JSON.pretty_generate(details))
end

puts "Data successfully added to #{file_path}!"

puts(details)