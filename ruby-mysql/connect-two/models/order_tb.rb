require 'active_record'

class OrderTb < ActiveRecord::Base
  validates :orderName, :orderPrice, :user_tb_id, presence: true
end