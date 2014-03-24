# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Wedding::Application.initialize!

def in_memory_database?
  ENV["RAILS_ENV"] == "test" and
      ActiveRecord::Base.connection.class == ActiveRecord::ConnectionAdapters::SQLite3Adapter
end

if in_memory_database?
  puts "creating sqlite in memory database"
  load "#{Rails.root}/db/schema.rb" # use db agnostic schema by default
  # ActiveRecord::Migrator.up('db/migrate') # use migrations
end