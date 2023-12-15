class Api::V1::RequestResource < JSONAPI::Resource
  attributes :name, :surname, :house_members_count, :schedule, :city, :street, :number, :subnumber, :zip_code, :country,
             :email, :phone_number, :processed
end
