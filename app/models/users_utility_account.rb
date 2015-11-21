class UsersUtilityAccount < ActiveRecord::Base
  belongs_to :user
  belongs_to :utility
  validates :user_id, presence: true
  validates :account_no, presence: true
end