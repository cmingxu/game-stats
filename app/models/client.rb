class Client < ActiveRecord::Base
  has_many :accounts
  has_many :apps

  validates :name, :presence => true
end
