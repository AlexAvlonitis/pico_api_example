require "pico_api"
require "./config/dotenv"
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    ROM::SQL::RakeSupport.env = ROM.container(default: [:sql, ENV.fetch("DB_CONNECTION_STRING")])
  end

  task :seed do
    PicoApi::Database.setup! do |conf|
      conf.default.connection.execute "INSERT INTO animals (name, weight) VALUES ('liger', 220)"
    end
  end
end
