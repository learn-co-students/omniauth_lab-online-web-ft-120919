Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :github, ENV['2c004e3485b7d6ed3bd9'], ENV['3461d3cfb320c13420b5171cdf1a62cc058c5dba']
end