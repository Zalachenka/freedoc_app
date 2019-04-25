class Doctor < ApplicationRecord
	belongs_to :city
	has_many :appointments
	has_many :patients, through: :appointments
	has_many :link_tables
	has_many :specialties, through: :link_tables

end
