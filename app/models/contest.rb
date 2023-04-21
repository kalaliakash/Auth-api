class Contest < ApplicationRecord
	has_and_belongs_to_many :users 
	belong_to :organiser
end
