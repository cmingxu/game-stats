class Payment < ActiveRecord::Base
  belongs_to :app
  belongs_to :player
end
