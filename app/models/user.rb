class User < ApplicationRecord
  has_many :visits, foreign_key: 'priest_id'
end
