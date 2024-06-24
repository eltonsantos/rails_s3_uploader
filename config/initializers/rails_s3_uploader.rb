RailsS3Uploader.configure do |config|
  config.access_key_id = ENV['AWS_ACCESS_KEY_ID']
  config.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  config.region = ENV['AWS_REGION']
  config.bucket = ENV['AWS_BUCKET']
end
  
