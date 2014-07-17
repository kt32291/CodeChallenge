# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: ENV['email_address'],
  password: ENV['email_password'],
  address: 'smtp.gmail.com',
  port: 587,
  authentication: 'plain',
  enable_starttls_auto: true
}
