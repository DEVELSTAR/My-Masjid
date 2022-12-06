class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  STATUSES = [:Working, :not_working]
  has_many :masjids, dependent: :destroy


  def is_admin?
    is_admin
  end

  def sub_admin?
    sub_admin
  end
end
