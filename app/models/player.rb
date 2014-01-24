class Player < ActiveRecord::Base
  belongs_to :app
  has_many :ftes
  has_many :payments
  has_many :logins
end
