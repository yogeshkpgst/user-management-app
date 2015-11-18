class User < ActiveRecord::Base

  belongs_to :utility_account
  
  accepts_nested_attributes_for :utility_account, :allow_destroy => true

  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 attr_accessible :name, :email, :password, :password_confirmation, :last_name, :prefix, :suffix, :title, :street1, :street2, :city, :state, :country, :zip, :phone, :fax, :nick_name, :group, :rate_code, :ac_type, :ac_no

 #validates :name, :email, :password, :last_name, presence: true
end
