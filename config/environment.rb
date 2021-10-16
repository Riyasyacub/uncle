# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


# Add sendgrid support
if Rails.env.production?
  ActionMailer::Base.smtp_settings = {
    :user_name => "postmaster@sandboxb2dc7280df444242beebedce22574e26.mailgun.org",
    :password => "6d209d8a7bd22e813d118b2ab0125387-2ac825a1-2983b8ec",
    :domain => "www.alnafistravels.in",
    :address => "smtp.mailgun.org",
    :port => 587, # sendgrid_port
    :authentication => :plain,
    :enable_starttls_auto => true
  }
end