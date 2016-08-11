OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'id', 'secret', scope: 'email, public_profile', info_fields: 'email,name,first_name,last_name,gender,locale'
end


# OmniAuth.config.logger = Rails.logger

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, 'my facebook app id', 'my facebook app secret', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
# end