class Requirement < ApplicationRecord
	belongs_to :service
	has_one :requirement_answer
end
