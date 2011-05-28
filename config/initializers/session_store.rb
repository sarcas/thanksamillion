# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_thanksamillion_session',
  :secret      => '7d67a97d9d9cccfaf46e5f4439926850eac4650566e747f7c338f3cb71c7b6c3e471107def74b0c6f2012f1f2679399301e46b1a5769e61f6d4163a4d06e0e33'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
