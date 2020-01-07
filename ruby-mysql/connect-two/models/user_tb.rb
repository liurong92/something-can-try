require 'active_record'

class UserTb < ActiveRecord::Base
  validates :userName, :password, :email, presence: true
  has_many :order_tbs
end
