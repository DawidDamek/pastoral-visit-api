class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :visits, foreign_key: 'priest_id'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :api,  :jwt_authenticatable, jwt_revocation_strategy: self
end
