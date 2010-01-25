# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sscms_session',
  :secret      => '133884ff6cd9a154483a6fe31ba01704e56637de6447b5aec6fe22b728ca220d4815c666073ac09962ef44246d960716dcffa69b3a6daac72cdf44f9c86b67ae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
