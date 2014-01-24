desc "generate fake data for game-stats"

task :fake_data => [:environment] do
  Client.delete_all
  Account.delete_all
  App.delete_all
  Fte.delete_all
  Login.delete_all
  Payment.delete_all

  client = Client.create :name => "Big Vendor"
  key, secret = App.generate_key_and_secret
  app = client.apps.create :name => "Success Name", :key => key, :secret => secret

  start_date = 360.days.ago
  end_date   = Date.today
  360.times do |i|
    
  end
end
