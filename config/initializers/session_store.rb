# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_liftrr_session',
  :secret      => '4f495bba9dadc6c870449ce212f487a96f82bb218a651597d2bc9a5ae962ec97d0d271bedee4d2e4aa1e4b7fbb29dcea0c5d39d5708aa2d0179c0d4dc3db7a79'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
