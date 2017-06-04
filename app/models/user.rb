class User < ApplicationRecord

  enum role: [:member, :admin, :super_admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :member
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable
end
