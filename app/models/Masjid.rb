class Masjid < ApplicationRecord

  STATUSES = [:Need_a_imam, :no_need]

  validates :name, :city, :village,  presence: true
  belongs_to :user
  has_many :masjids_members, dependent: :destroy

  def sub_admin?
    sub_admin
  end
end