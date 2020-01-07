require 'active_record'

class User < ActiveRecord::Base
  validates :userName, :password, :email, presence: true
  has_many :orders
end