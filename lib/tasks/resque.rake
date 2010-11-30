require 'resque/tasks'
namespace :resque do
  task :setup => :environment do
    puts ENV["RAILS_ENV"]
  end
end


