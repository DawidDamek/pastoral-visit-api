# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Request.destroy_all
Visit.destroy_all

User.create([
              {
                id: 1,
                name: 'John',
                surname: 'Doe',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                email: 'john.doe@example.com',
                password: 'password123',
                phone_number: '+1234567890',
                photo_url: 'https://example.com/john_doe_photo.jpg',
                degree: 'preist'
              },
              { id: 2,
                name: 'Jane',
                surname: 'Smith',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                email: 'jane.smith@example.com',
                password: 'password456',
                phone_number: '+9876543210',
                photo_url: 'https://example.com/jane_smith_photo.jpg',
                degree: 'preist' },
              { id: 3,
                name: 'Robert',
                surname: 'Johnson',
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                email: 'robert.johnson@example.com',
                password: 'password789',
                phone_number: '+1122334455',
                photo_url: 'https://example.com/robert_johnson_photo.jpg',
                degree: 'rector' }
            ])

Request.create([
                 {
                   id: 1,
                   name: 'Andrew',
                   surname: 'Kos',
                   house_members_count: 4,
                   schedule: DateTime.now + 1.week,
                   street: 'Długa',
                   number: '1A',
                   subnumber: '2B',
                   zip_code: '12345',
                   country: 'Polska',
                   email: 'andrew.kos@example.com',
                   phone_number: '+987654321',
                   processed: false
                 },
                 { id: 2,
                   name: 'Jane',
                   surname: 'Nowicka',
                   house_members_count: 3,
                   schedule: DateTime.now + 2.weeks,
                   street: 'Wrzosowa',
                   number: '3C',
                   subnumber: '4D',
                   zip_code: '54321',
                   country: 'Polska',
                   email: 'jane.nowicka@example.com',
                   phone_number: '+123456789',
                   processed: true },
                 { id: 3,
                   name: 'Łukasz',
                   surname: 'Wolski',
                   house_members_count: 2,
                   schedule: DateTime.now + 3.weeks,
                   street: 'Świerkowa',
                   number: '5E',
                   subnumber: '6F',
                   zip_code: '67890',
                   country: 'Polska',
                   email: 'lukas.wolski@example.com',
                   phone_number: '+112233445',
                   processed: true }
               ])
Visit.create([
               {
                 id: 1,
                 name: 'Andrew',
                 surname: 'Kos',
                 house_members_count: 4,
                 schedule: DateTime.now + 1.week,
                 street: 'Długa',
                 number: '1A',
                 subnumber: '2B',
                 zip_code: '12345',
                 country: 'Polska',
                 email: 'andrew.kos@example.com',
                 phone_number: '+987654321',
                 status: 'scheduled',
                 request_id: 1
               },
               { id: 2,
                 name: 'Jane',
                 surname: 'Nowicka',
                 house_members_count: 3,
                 schedule: DateTime.now + 2.weeks,
                 street: 'Wrzosowa',
                 number: '3C',
                 subnumber: '4D',
                 zip_code: '54321',
                 country: 'Polska',
                 email: 'jane.nowicka@example.com',
                 phone_number: '+123456789',
                 status: 'scheduled',
                 priest_id: 1,
                 request_id: 2 }
             ])

p "Created #{User.count} users"
p "Created #{Request.count} requests"
p "Created #{Visit.count} visits"
