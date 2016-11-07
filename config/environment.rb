# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :user_name => ENV["SEDNGRID_USERNAME"],
  :password => ENV["SENDGRID_PASSWORD"],
  :domain => 'heroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

