clock: bundle exec clockwork config/clock.rb
web: bundle exec puma -C config/puma.rb
worker: bundle exec que -w 4 ./config/environment.rb
