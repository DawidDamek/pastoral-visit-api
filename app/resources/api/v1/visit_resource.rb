class Api::V1::VisitResource < JSONAPI::Resource
  attributes :name, :surname, :house_members_count, :schedule, :street, :number, :subnumber, :zip_code, :country, :email,
             :phone_number, :status, :created_at, :updated_at

  has_one :priest, class_name: 'User'
end
