# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_projekthanteringscentralen_session',
  :secret      => '406f561f83d7c42837bfe1524d82bd6444350ba2254438d6c24405a145dceabcf24de6d00655247e575576029f638bd6e63ce9ceac80c93d83a1b827cbe80a53'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
