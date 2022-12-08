class MasjidsMember < ApplicationRecord
	has_many :bethhs, dependent: :destroy
	belongs_to :masjid
end