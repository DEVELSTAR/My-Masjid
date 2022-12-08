class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  STATUSES = [:Working, :not_working]
  has_many :masjids, dependent: :destroy

  validates :name, :city, :village,  presence: true

  def is_admin?
    if self.email === "star786@gmail.com"
      is_admin = true
    end
  end

  def sub_admin?
    sub_admin
  end
end
