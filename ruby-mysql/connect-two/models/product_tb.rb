require 'active_record'

class ProductTb < ActiveRecord::Base
  validates :name, :price, presence: true
end