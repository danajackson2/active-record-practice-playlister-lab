ENV["RAILS_ENV"] ||= "test"
ENV["SINATRA_ENV"] ||= "test"

require "bundler/setup"
require "sinatra/activerecord"
require "faker"

Bundler.require

require_all 'app/models'

connection_details = YAML::load(File.open('config/database.yml'))[ENV["RAILS_ENV"]]

ActiveRecord::Base.establish_connection(connection_details)
