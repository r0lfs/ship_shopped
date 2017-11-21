class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs, through: :contracts

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	validates :ship_name, presence: true, uniqueness: true
	validates :containers, numericality: { only_integer: true }

end
