class Visit < ApplicationRecord
  belongs_to :priest, class_name: 'User', foreign_key: 'priest_id'

  belongs_to :request
end
