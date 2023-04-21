class User < ApplicationRecord
	include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
				 :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :apps
	has_and_belongs_to_many :contests
	belongs_to :Organiser
	def jwt_payload
		super
	end			 
end
