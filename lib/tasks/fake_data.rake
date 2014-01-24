desc "generate fake data for game-stats"

task :fake_data => [:environment] do
  SCALE = 1
  FTE_STEPS = 10
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
  player_id_offset = 1

  360.times do |i|
    ((20 * SCALE+ rand(10 * SCALE))).times do
      p = Player.create(:install_at => start_date + i.day + rand(3600 * 24),
                        :player_id => player_id_offset += 1,
                        :name => "#{player_id_offset} name",
                        :locale => "us",
                        :country => "us")

      fte_steps = rand(FTE_STEPS)
      fte_steps.times do |i| p.ftes.create(:step => i, :pass_time => p.install_at += i * 2) end
    end
  end

  Player.find_in_batches do |players|
    players.each do |player|
      next unless player.ftes.count < FTE_STEPS
      days = (end_date.beginning_of_day - player.install_at) / (3600 * 24)
      rand(days).times do |player_activity|
        rand(4).times do
          login_at = player.install_at + player_activity + rand(3600 * 24)
          player.logins.create(:app_id => app.id,
                               :login_at => login_at,
                               :locale => "us",
                               :country => "us")

          player.payments.create(:app_id => app.id,
                               :amount => rand(90000),
                               :locale => "us",
                               :country => "us")
        end
      end

      puts player.name
    end
  end
end
