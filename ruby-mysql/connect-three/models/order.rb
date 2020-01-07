require 'active_record'

class Order < ActiveRecord::Base
  validates :orderName, :orderPrice, :user_id, presence: true
end