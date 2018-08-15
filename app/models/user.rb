class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  has_one :profile, :autosave => true
  has_many :kids, :autosave => true
  has_one :family, :autosave => true
  has_one :membership_info

  # after_create :build_membership_infos
  after_create :create_profile
  after_create :create_family
  after_create :create_membership_info

    enum role: [:applicant, :user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :applicant
  end
end
