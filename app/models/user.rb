class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile, :autosave => true
  has_many :kids
  has_one :family, :autosave => true
  has_one :membership_infos, :autosave => true

  before_create :build_membership_infos
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
end
