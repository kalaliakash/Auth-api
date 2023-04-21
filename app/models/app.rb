class App < ApplicationRecord
  belongs_to :user
	validates :contest, presence: true, uniqueness: true
	
	
	
end
