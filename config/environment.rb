# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
config.assets.precompile += %w[*.png *.jpg *.jpeg *.gif]
