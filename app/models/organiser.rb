class Organiser < ApplicationRecord
	has_one :user
	has_many :contests
end
