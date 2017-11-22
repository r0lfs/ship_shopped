class Job < ApplicationRecord
	belongs_to :user
	has_many :boats, through: :contracts
	accepts_nested_attributes_for :boats

	validates :job_name, presence: true, uniqueness: true
	validates :description, presence: true, length: {minimum: 50}
	validates :origin, presence: true
	validates :destination, presence: true
	validates :cost, presence: true, numericality: { greater_than_or_equal_to: 1000, only_integer: true }
	validates :containers, presence: true, numericality: { only_integer: true } 
end
