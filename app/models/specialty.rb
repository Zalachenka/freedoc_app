class Specialty < ApplicationRecord
	has_many :link_spe_docs 
	has_many :doctors, through: :link_spe_docs

end
