class App < ActiveRecord::Base
  belongs_to :client
  has_many :players


  def self.generate_key_and_secret
    key = SecureRandom.hex(16)
    while !App.find_by_key(key)
      key = SecureRandom.hex(16)
    end

    return [key, SecureRandom.hex(16)]
  end
end
