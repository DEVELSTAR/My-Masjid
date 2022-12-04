class Masjid < ApplicationRecord

  STATUSES = [:Need_a_imam, :no_need]

  validates :name, presence: true
  belongs_to :user
end