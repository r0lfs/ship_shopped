class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs, through: :contracts

	validates :ship_name, presence: true, uniqueness: true
	validates :containers, numericality: { only_integer: true }
end
