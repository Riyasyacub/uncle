# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


# Add sendgrid support
if Rails.env.production?
  
end