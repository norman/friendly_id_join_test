# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_friendly_id_join_test_session',
  :secret      => '8eb87e5ad57988a2cdc4c28f7ba7cd27121162917fcdfbe88c79e35284db0cf2a9712d02c3527852b232aad8ee0db036d82476f1e97bc7070581decfcda692d7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
