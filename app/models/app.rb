class App < ActiveRecord::Base
  belongs_to :client
  has_many :players

end
