# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file,token)
		token
	end
end


SampleApp::Application.config.secret_key_base = '1b0f49bea90eaea01bb3d464eec90131b628271e5879b6aa10d28adfd0ada8cf3486c6ba66de0722c156b34e5493cdd2983591e12ae77d54b630f587c280e2df'
