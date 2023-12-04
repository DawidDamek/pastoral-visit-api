class Visit < ApplicationRecord
  belongs_to :priest, class_name: 'User', foreign_key: 'priest_id', optional: true

  belongs_to :request, optional: true
end
