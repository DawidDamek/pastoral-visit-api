class Api::V1::UserResource < JSONAPI::Resource
  attributes :name, :surname, :description, :email, :phone_number, :photo_url, :degree

  has_many :visits, foreign_key: 'priest_id'
end
