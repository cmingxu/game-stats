class Login < ActiveRecord::Base
  belongs_to :player
  belongs_to :app
end
