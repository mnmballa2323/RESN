class Service < ApplicationRecord
	has_many_attached :images
	has_many :requirements
	has_many :faqs
	has_many :packages

	accepts_nested_attributes_for :requirements, :faqs, :packages
end
